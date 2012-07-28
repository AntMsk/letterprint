require 'spec_helper'

describe "letters/index.html.erb" do
  before(:each) do
    assign(:letters, [
      stub_model(Letter,
        :index => "Index",
        :adress => "Adress",
        :bukl => "Bukl"
      ),
      stub_model(Letter,
        :index => "Index",
        :adress => "Adress",
        :bukl => "Bukl"
      )
    ])
  end

  it "renders a list of letters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bukl".to_s, :count => 2
  end
end
