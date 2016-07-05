require 'rails_helper'

RSpec.describe "school_classes/index", :type => :view do
  before(:each) do
    assign(:school_classes, [
      SchoolClass.create!(
        :title => "Title",
        :room_number => 1
      ),
      SchoolClass.create!(
        :title => "Title",
        :room_number => 1
      )
    ])
  end

  it "renders a list of school_classes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
