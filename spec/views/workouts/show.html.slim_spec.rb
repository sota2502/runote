require 'rails_helper'

RSpec.describe "workouts/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
