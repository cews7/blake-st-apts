require 'rails_helper'

RSpec.feature "When someone visits '/units'" do
  scenario "they see a list of units" do
    Unit.create(name: "1a", square_footage: 10, monthly_rent: 1000)
    Unit.create(name: "1b", square_footage: 20, monthly_rent: 1000)

    visit units_path

    expect(page).to have_content("1a")
    expect(page).to have_content("Square Footage: 10")
    expect(page).to have_content("Monthly Rent: 1000")
    expect(page).to have_content("Cost Per Square Foot: 100")

    expect(page).to have_content("1b")
    expect(page).to have_content("Square Footage: 20")
    expect(page).to have_content("Monthly Rent: 1000")
    expect(page).to have_content("Cost Per Square Foot: 50")
  end
end
