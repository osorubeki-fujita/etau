require 'rails_helper'

RSpec.describe "cities/index", type: :view do
  before(:each) do
    assign(:cities, [
      City.create!(
        :name_ja => "Name Ja",
        :name_hira => "Name Hira",
        :name_en => "Name En",
        :city_category_id => 1,
        :latitude => "Latitude",
        :longitude => "Longitude",
        :url => "Url",
        :twitter => "Twitter",
        :wikipedia => "Wikipedia",
        :population => 2
      ),
      City.create!(
        :name_ja => "Name Ja",
        :name_hira => "Name Hira",
        :name_en => "Name En",
        :city_category_id => 1,
        :latitude => "Latitude",
        :longitude => "Longitude",
        :url => "Url",
        :twitter => "Twitter",
        :wikipedia => "Wikipedia",
        :population => 2
      )
    ])
  end

  it "renders a list of cities" do
    render
    assert_select "tr>td", :text => "Name Ja".to_s, :count => 2
    assert_select "tr>td", :text => "Name Hira".to_s, :count => 2
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Wikipedia".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
