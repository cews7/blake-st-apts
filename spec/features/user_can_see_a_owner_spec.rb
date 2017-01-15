require 'rails_helper'

RSpec.feature "When I visit a specific owner" do
  scenario "I see the owner's name, a list of his units and total earnings" do
    owner1 = Owner.create(first_name: "Jessica", last_name: "Jones")
    owner2 = Owner.create(first_name: "Luke", last_name: "Cage")
    owner1.units.create(name: "1a", square_footage: 20, monthly_rent: 1000, cost_per_square_foot: 50)
    owner1.units.create(name: "1b", square_footage: 20, monthly_rent: 1000, cost_per_square_foot: 50)
    owner2.units.create(name: "2a", square_footage: 20, monthly_rent: 1000, cost_per_square_foot: 50)

    visit owners_path

    click_link "Jessica"
    expect(current_path).to eq(owner_path(owner1.id))

    expect(page).to have_content("Jessica Jones")
    expect(page).to have_content("1a")
    expect(page).to have_content("Monthly Rent: $1000")
    expect(page).to have_content("Total Monthly Earnings: $2000")
  end
end
