require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :user => nil,
        :weather => 2,
        :location => "Location",
        :physical_conditions => 3,
        :diary => "MyText"
      ),
      Note.create!(
        :user => nil,
        :weather => 2,
        :location => "Location",
        :physical_conditions => 3,
        :diary => "MyText"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
