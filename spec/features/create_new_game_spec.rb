require "rails_helper"
require "helpers/game_helper"

RSpec.feature "User can create a new game" do
  scenario "by going to the home page" do
    visit "/"
    click_link "New Game of Rock Paper Scissors?"

    expect(page).to have_content "Which do you choose?"
  end

  it "creates a new game" do
    g = Game.new
  end
end
