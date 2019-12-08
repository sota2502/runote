require 'rails_helper'

RSpec.describe "workouts/index", type: :view do
  before(:each) do
    assign(:workouts, [
      Workout.create!(
        :note => nil,
        :meter => "",
        :kcal => "",
        :steps => "",
        :sec => "",
        :memo => "MyText"
      ),
      Workout.create!(
        :note => nil,
        :meter => "",
        :kcal => "",
        :steps => "",
        :sec => "",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of workouts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
