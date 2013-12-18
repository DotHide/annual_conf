require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :mobile => "Mobile",
        :name => "Name"
      ),
      stub_model(User,
        :mobile => "Mobile",
        :name => "Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
