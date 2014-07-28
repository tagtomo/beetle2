require "rails_helper"

RSpec.describe PersonHistoriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/person_histories").to route_to("person_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/person_histories/new").to route_to("person_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/person_histories/1").to route_to("person_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/person_histories/1/edit").to route_to("person_histories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/person_histories").to route_to("person_histories#create")
    end

    it "routes to #update" do
      expect(:put => "/person_histories/1").to route_to("person_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/person_histories/1").to route_to("person_histories#destroy", :id => "1")
    end

  end
end
