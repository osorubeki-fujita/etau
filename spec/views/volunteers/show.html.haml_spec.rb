require 'rails_helper'

RSpec.describe "volunteers/show", type: :view do
  before(:each) do
    @volunteer = assign(:volunteer, Volunteer.create!(
      :city_id => 1,
      :date => "Date",
      :time => "Time",
      :belongings => "MyText",
      :note => "MyText",
      :contact_id => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Contact/)
  end
end
