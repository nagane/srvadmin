require 'rails_helper'

RSpec.describe "Ipv4admins", :type => :request do
  describe "GET /ipv4admins" do
    it "works! (now write some real specs)" do
      get ipv4admins_path
      expect(response.status).to be(200)
    end
  end
end
