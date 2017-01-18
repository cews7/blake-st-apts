require 'rails_helper'

RSpec.feature "When someone visits '/renters'" do
  scenario "they see a list of renters with their apartments" do
    renter1 = Renter.create(first_name: "Jake", last_name: "Jones")
    renter2 = Renter.create(first_name: "Adam", last_name: "Arroyo")
    Unit.create(name: "1a", square_footage: 10, monthly_rent: 1000, renter: renter1)
    Unit.create(name: "1b", square_footage: 20, monthly_rent: 1000, renter: renter2)

    visit renters_path

    expect(page).to have_content("Jake Jones: 1a")
    expect(page).to have_content("Monthly Rent: $1000")
    expect(page).to have_content("Cost Per Square Foot: $100")

    expect(page).to have_content("Adam Arroyo: 1b")
    expect(page).to have_content("Monthly Rent: $1000")
    expect(page).to have_content("Cost Per Square Foot: $50")

    expect(page).to have_content("Average Cost Per Square Foot For All Renters: $75")
  end
end
