require 'rails_helper'

RSpec.describe "ipv4admins/new", :type => :view do
  before(:each) do
    assign(:ipv4admin, Ipv4admin.new(
      :ip_statu => 1,
      :ip_address => "MyString",
      :Host => "MyString",
      :Note => "MyString"
    ))
  end

  it "renders new ipv4admin form" do
    render

    assert_select "form[action=?][method=?]", ipv4admins_path, "post" do

      assert_select "input#ipv4admin_ip_statu[name=?]", "ipv4admin[ip_statu]"

      assert_select "input#ipv4admin_ip_address[name=?]", "ipv4admin[ip_address]"

      assert_select "input#ipv4admin_Host[name=?]", "ipv4admin[Host]"

      assert_select "input#ipv4admin_Note[name=?]", "ipv4admin[Note]"
    end
  end
end
