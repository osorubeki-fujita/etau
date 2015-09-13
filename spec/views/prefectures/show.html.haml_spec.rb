require 'rails_helper'

RSpec.describe "prefectures/show", type: :view do
  before(:each) do
    @prefecture = assign(:prefecture, Prefecture.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name Ja/)
    expect(rendered).to match(/Name Hira/)
    expect(rendered).to match(/Name En/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Wikipedia/)
  end
end
