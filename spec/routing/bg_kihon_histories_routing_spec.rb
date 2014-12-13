require "rails_helper"

RSpec.describe BgKihonHistoriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bg_kihon_histories").to route_to("bg_kihon_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/bg_kihon_histories/new").to route_to("bg_kihon_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/bg_kihon_histories/1").to route_to("bg_kihon_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bg_kihon_histories/1/edit").to route_to("bg_kihon_histories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bg_kihon_histories").to route_to("bg_kihon_histories#create")
    end

    it "routes to #update" do
      expect(:put => "/bg_kihon_histories/1").to route_to("bg_kihon_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bg_kihon_histories/1").to route_to("bg_kihon_histories#destroy", :id => "1")
    end

  end
end
