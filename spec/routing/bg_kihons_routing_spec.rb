require "rails_helper"

RSpec.describe BgKihonsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bg_kihons").to route_to("bg_kihons#index")
    end

    it "routes to #new" do
      expect(:get => "/bg_kihons/new").to route_to("bg_kihons#new")
    end

    it "routes to #show" do
      expect(:get => "/bg_kihons/1").to route_to("bg_kihons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bg_kihons/1/edit").to route_to("bg_kihons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bg_kihons").to route_to("bg_kihons#create")
    end

    it "routes to #update" do
      expect(:put => "/bg_kihons/1").to route_to("bg_kihons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bg_kihons/1").to route_to("bg_kihons#destroy", :id => "1")
    end

  end
end
