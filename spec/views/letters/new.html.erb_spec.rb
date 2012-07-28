require 'spec_helper'

describe "letters/new.html.erb" do
  before(:each) do
    assign(:letter, stub_model(Letter,
      :index => "MyString",
      :adress => "MyString",
      :bukl => "MyString"
    ).as_new_record)
  end

  it "renders new letter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => letters_path, :method => "post" do
      assert_select "input#letter_index", :name => "letter[index]"
      assert_select "input#letter_adress", :name => "letter[adress]"
      assert_select "input#letter_bukl", :name => "letter[bukl]"
    end
  end
end
