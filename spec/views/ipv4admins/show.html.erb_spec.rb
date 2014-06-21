require 'rails_helper'

RSpec.describe "ipv4admins/show", :type => :view do
  before(:each) do
    @ipv4admin = assign(:ipv4admin, Ipv4admin.create!(
      :ip_statu => 1,
      :ip_address => "Ip Address",
      :Host => "Host",
      :Note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Ip Address/)
    expect(rendered).to match(/Host/)
    expect(rendered).to match(/Note/)
  end
end
