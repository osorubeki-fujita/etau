require 'rails_helper'

RSpec.describe "prefectures/edit", type: :view do
  before(:each) do
    @prefecture = assign(:prefecture, Prefecture.create!(
      :name_ja => "MyString",
      :name_hira => "MyString",
      :name_en => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :population => 1,
      :url => "MyString",
      :twitter => "MyString",
      :tel => "MyString",
      :wikipedia => "MyString"
    ))
  end

  it "renders the edit prefecture form" do
    render

    assert_select "form[action=?][method=?]", prefecture_path(@prefecture), "post" do

      assert_select "input#prefecture_name_ja[name=?]", "prefecture[name_ja]"

      assert_select "input#prefecture_name_hira[name=?]", "prefecture[name_hira]"

      assert_select "input#prefecture_name_en[name=?]", "prefecture[name_en]"

      assert_select "input#prefecture_latitude[name=?]", "prefecture[latitude]"

      assert_select "input#prefecture_longitude[name=?]", "prefecture[longitude]"

      assert_select "input#prefecture_population[name=?]", "prefecture[population]"

      assert_select "input#prefecture_url[name=?]", "prefecture[url]"

      assert_select "input#prefecture_twitter[name=?]", "prefecture[twitter]"

      assert_select "input#prefecture_tel[name=?]", "prefecture[tel]"

      assert_select "input#prefecture_wikipedia[name=?]", "prefecture[wikipedia]"
    end
  end
end
