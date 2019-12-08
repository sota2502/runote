require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :user => nil,
      :weather => 1,
      :location => "MyString",
      :physical_conditions => 1,
      :diary => "MyText"
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input[name=?]", "note[user_id]"

      assert_select "input[name=?]", "note[weather]"

      assert_select "input[name=?]", "note[location]"

      assert_select "input[name=?]", "note[physical_conditions]"

      assert_select "textarea[name=?]", "note[diary]"
    end
  end
end
