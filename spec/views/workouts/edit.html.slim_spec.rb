require 'rails_helper'

RSpec.describe "workouts/edit", type: :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!(
      :note => nil,
      :meter => "",
      :kcal => "",
      :steps => "",
      :sec => "",
      :memo => "MyText"
    ))
  end

  it "renders the edit workout form" do
    render

    assert_select "form[action=?][method=?]", workout_path(@workout), "post" do

      assert_select "input[name=?]", "workout[note_id]"

      assert_select "input[name=?]", "workout[meter]"

      assert_select "input[name=?]", "workout[kcal]"

      assert_select "input[name=?]", "workout[steps]"

      assert_select "input[name=?]", "workout[sec]"

      assert_select "textarea[name=?]", "workout[memo]"
    end
  end
end
