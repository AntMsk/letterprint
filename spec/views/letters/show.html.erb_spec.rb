require 'spec_helper'

describe "letters/show.html.erb" do
  before(:each) do
    @letter = assign(:letter, stub_model(Letter,
      :index => "Index",
      :adress => "Adress",
      :bukl => "Bukl"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Index/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Adress/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bukl/)
  end
end
