require 'rails_helper'

RSpec.describe "volunteers/index", type: :view do
  before(:each) do
    assign(:volunteers, [
      Volunteer.create!(
        :city_id => 1,
        :date => "Date",
        :time => "Time",
        :belongings => "MyText",
        :note => "MyText",
        :contact_id => "Contact"
      ),
      Volunteer.create!(
        :city_id => 1,
        :date => "Date",
        :time => "Time",
        :belongings => "MyText",
        :note => "MyText",
        :contact_id => "Contact"
      )
    ])
  end

  it "renders a list of volunteers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
  end
end
