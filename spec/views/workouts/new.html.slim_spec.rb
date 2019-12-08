require 'rails_helper'

RSpec.describe "workouts/new", type: :view do
  before(:each) do
    assign(:workout, Workout.new(
      :note => nil,
      :meter => "",
      :kcal => "",
      :steps => "",
      :sec => "",
      :memo => "MyText"
    ))
  end

  it "renders new workout form" do
    render

    assert_select "form[action=?][method=?]", workouts_path, "post" do

      assert_select "input[name=?]", "workout[note_id]"

      assert_select "input[name=?]", "workout[meter]"

      assert_select "input[name=?]", "workout[kcal]"

      assert_select "input[name=?]", "workout[steps]"

      assert_select "input[name=?]", "workout[sec]"

      assert_select "textarea[name=?]", "workout[memo]"
    end
  end
end
