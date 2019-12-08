require 'rails_helper'

RSpec.describe "notes/show", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :user => nil,
      :weather => 2,
      :location => "Location",
      :physical_conditions => 3,
      :diary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
  end
end
