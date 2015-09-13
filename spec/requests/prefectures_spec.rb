require 'rails_helper'

RSpec.describe "Prefectures", type: :request do
  describe "GET /prefectures" do
    it "works! (now write some real specs)" do
      get prefectures_path
      expect(response).to have_http_status(200)
    end
  end
end
