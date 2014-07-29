require "rails_helper"

RSpec.describe AddresseesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/addressees").to route_to("addressees#index")
    end

    it "routes to #new" do
      expect(:get => "/addressees/new").to route_to("addressees#new")
    end

    it "routes to #show" do
      expect(:get => "/addressees/1").to route_to("addressees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/addressees/1/edit").to route_to("addressees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/addressees").to route_to("addressees#create")
    end

    it "routes to #update" do
      expect(:put => "/addressees/1").to route_to("addressees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/addressees/1").to route_to("addressees#destroy", :id => "1")
    end

  end
end
