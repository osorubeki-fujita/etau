require 'rails_helper'

RSpec.describe "volunteers/edit", type: :view do
  before(:each) do
    @volunteer = assign(:volunteer, Volunteer.create!(
      :city_id => 1,
      :date => "MyString",
      :time => "MyString",
      :belongings => "MyText",
      :note => "MyText",
      :contact_id => "MyString"
    ))
  end

  it "renders the edit volunteer form" do
    render

    assert_select "form[action=?][method=?]", volunteer_path(@volunteer), "post" do

      assert_select "input#volunteer_city_id[name=?]", "volunteer[city_id]"

      assert_select "input#volunteer_date[name=?]", "volunteer[date]"

      assert_select "input#volunteer_time[name=?]", "volunteer[time]"

      assert_select "textarea#volunteer_belongings[name=?]", "volunteer[belongings]"

      assert_select "textarea#volunteer_note[name=?]", "volunteer[note]"

      assert_select "input#volunteer_contact_id[name=?]", "volunteer[contact_id]"
    end
  end
end
