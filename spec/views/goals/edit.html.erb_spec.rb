require 'rails_helper'

RSpec.describe "goals/edit", type: :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :user => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit goal form" do
    render

    assert_select "form[action=?][method=?]", goal_path(@goal), "post" do

      assert_select "input#goal_user_id[name=?]", "goal[user_id]"

      assert_select "textarea#goal_description[name=?]", "goal[description]"
    end
  end
end
