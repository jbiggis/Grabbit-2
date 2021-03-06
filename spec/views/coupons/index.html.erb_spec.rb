require 'spec_helper'

describe "coupons/index.html.erb" do
  before(:each) do
    assign(:coupons, [
      stub_model(Coupon,
        :coupon_number => 1,
        :user_id => 1,
        :deal_id => 1,
        :order_id => 1,
        :status => 1
      ),
      stub_model(Coupon,
        :coupon_number => 1,
        :user_id => 1,
        :deal_id => 1,
        :order_id => 1,
        :status => 1
      )
    ])
  end

  it "renders a list of coupons" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
