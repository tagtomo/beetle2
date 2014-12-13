require "rails_helper"

RSpec.describe BgKazeisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bg_kazeis").to route_to("bg_kazeis#index")
    end

    it "routes to #new" do
      expect(:get => "/bg_kazeis/new").to route_to("bg_kazeis#new")
    end

    it "routes to #show" do
      expect(:get => "/bg_kazeis/1").to route_to("bg_kazeis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bg_kazeis/1/edit").to route_to("bg_kazeis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bg_kazeis").to route_to("bg_kazeis#create")
    end

    it "routes to #update" do
      expect(:put => "/bg_kazeis/1").to route_to("bg_kazeis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bg_kazeis/1").to route_to("bg_kazeis#destroy", :id => "1")
    end

  end
end
