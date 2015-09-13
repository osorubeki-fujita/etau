require 'rails_helper'

RSpec.describe "prefectures/index", type: :view do
  before(:each) do
    assign(:prefectures, [
      Prefecture.create!(
        :name_ja => "Name Ja",
        :name_hira => "Name Hira",
        :name_en => "Name En",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :population => 1,
        :url => "Url",
        :twitter => "Twitter",
        :tel => "Tel",
        :wikipedia => "Wikipedia"
      ),
      Prefecture.create!(
        :name_ja => "Name Ja",
        :name_hira => "Name Hira",
        :name_en => "Name En",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :population => 1,
        :url => "Url",
        :twitter => "Twitter",
        :tel => "Tel",
        :wikipedia => "Wikipedia"
      )
    ])
  end

  it "renders a list of prefectures" do
    render
    assert_select "tr>td", :text => "Name Ja".to_s, :count => 2
    assert_select "tr>td", :text => "Name Hira".to_s, :count => 2
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Wikipedia".to_s, :count => 2
  end
end
