require 'rails_helper'

RSpec.describe "ipv4admins/edit", :type => :view do
  before(:each) do
    @ipv4admin = assign(:ipv4admin, Ipv4admin.create!(
      :ip_statu => 1,
      :ip_address => "MyString",
      :Host => "MyString",
      :Note => "MyString"
    ))
  end

  it "renders the edit ipv4admin form" do
    render

    assert_select "form[action=?][method=?]", ipv4admin_path(@ipv4admin), "post" do

      assert_select "input#ipv4admin_ip_statu[name=?]", "ipv4admin[ip_statu]"

      assert_select "input#ipv4admin_ip_address[name=?]", "ipv4admin[ip_address]"

      assert_select "input#ipv4admin_Host[name=?]", "ipv4admin[Host]"

      assert_select "input#ipv4admin_Note[name=?]", "ipv4admin[Note]"
    end
  end
end
