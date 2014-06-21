require "rails_helper"

RSpec.describe Ipv4adminsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ipv4admins").to route_to("ipv4admins#index")
    end

    it "routes to #new" do
      expect(:get => "/ipv4admins/new").to route_to("ipv4admins#new")
    end

    it "routes to #show" do
      expect(:get => "/ipv4admins/1").to route_to("ipv4admins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ipv4admins/1/edit").to route_to("ipv4admins#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ipv4admins").to route_to("ipv4admins#create")
    end

    it "routes to #update" do
      expect(:put => "/ipv4admins/1").to route_to("ipv4admins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ipv4admins/1").to route_to("ipv4admins#destroy", :id => "1")
    end

  end
end
