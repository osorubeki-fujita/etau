require 'rails_helper'

RSpec.describe "cities/edit", type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
      :name_ja => "MyString",
      :name_hira => "MyString",
      :name_en => "MyString",
      :city_category_id => 1,
      :latitude => "MyString",
      :longitude => "MyString",
      :url => "MyString",
      :twitter => "MyString",
      :wikipedia => "MyString",
      :population => 1
    ))
  end

  it "renders the edit city form" do
    render

    assert_select "form[action=?][method=?]", city_path(@city), "post" do

      assert_select "input#city_name_ja[name=?]", "city[name_ja]"

      assert_select "input#city_name_hira[name=?]", "city[name_hira]"

      assert_select "input#city_name_en[name=?]", "city[name_en]"

      assert_select "input#city_city_category_id[name=?]", "city[city_category_id]"

      assert_select "input#city_latitude[name=?]", "city[latitude]"

      assert_select "input#city_longitude[name=?]", "city[longitude]"

      assert_select "input#city_url[name=?]", "city[url]"

      assert_select "input#city_twitter[name=?]", "city[twitter]"

      assert_select "input#city_wikipedia[name=?]", "city[wikipedia]"

      assert_select "input#city_population[name=?]", "city[population]"
    end
  end
end
