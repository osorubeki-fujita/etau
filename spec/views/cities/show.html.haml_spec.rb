require 'rails_helper'

RSpec.describe "cities/show", type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name Ja/)
    expect(rendered).to match(/Name Hira/)
    expect(rendered).to match(/Name En/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Wikipedia/)
    expect(rendered).to match(/2/)
  end
end
