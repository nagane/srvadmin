require 'rails_helper'

RSpec.describe "ipv4admins/index", :type => :view do
  before(:each) do
    assign(:ipv4admins, [
      Ipv4admin.create!(
        :ip_statu => 1,
        :ip_address => "Ip Address",
        :Host => "Host",
        :Note => "Note"
      ),
      Ipv4admin.create!(
        :ip_statu => 1,
        :ip_address => "Ip Address",
        :Host => "Host",
        :Note => "Note"
      )
    ])
  end

  it "renders a list of ipv4admins" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Ip Address".to_s, :count => 2
    assert_select "tr>td", :text => "Host".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
