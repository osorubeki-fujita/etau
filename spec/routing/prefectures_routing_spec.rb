require "rails_helper"

RSpec.describe PrefecturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/prefectures").to route_to("prefectures#index")
    end

    it "routes to #new" do
      expect(:get => "/prefectures/new").to route_to("prefectures#new")
    end

    it "routes to #show" do
      expect(:get => "/prefectures/1").to route_to("prefectures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/prefectures/1/edit").to route_to("prefectures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/prefectures").to route_to("prefectures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/prefectures/1").to route_to("prefectures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/prefectures/1").to route_to("prefectures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/prefectures/1").to route_to("prefectures#destroy", :id => "1")
    end

  end
end
