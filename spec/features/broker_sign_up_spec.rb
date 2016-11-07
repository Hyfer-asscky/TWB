require 'rails_helper'

RSpec.describe "Broker Signing Up" do

  scenario "successfully" do
    broker = FactoryGirl.create(:broker)
    visit new_broker_registration_path
    fill_in "First Name", with: broker.first_name
    fill_in "Last Name", with: broker.last_name
    fill_in "Email", with: "example@user.com"
    fill_in "Password", with: broker.password, match: :prefer_exact
    fill_in "Password Confirmation", with: broker.password_confirmation
    fill_in "Description", with: broker.description
    fill_in "Phone",with: broker.phone
    fill_in "Firm name",with: broker.firm_name
    fill_in "Address Line 1",with: broker.address_line_1
    fill_in "City",with: broker.city
    fill_in "Zip/Postal/Code", with: broker.zip_postal_code
    fill_in "State/Province/County", with: broker.state_province_county
    # fill_in "Country", with: broker.country
    select "Nepal", from: "broker[country]"
    fill_in "Specialty", with: broker.specialty
    fill_in "Past Experience", with: broker.past_experience
    fill_in "Service Rate", with: broker.service_rates
    # attach_file("Avatar", Rails.root + "spec/fixtures/files/5.png", visible: false)
    fill_in "Broker Number", with: broker.broker_number
    click_on "Sign up"
    
    expect(page).to have_content "example@user.com"
  end

  scenario "unsuccessfully" do
    broker = FactoryGirl.create(:invalid_broker)
    visit new_broker_registration_path
    fill_in "First Name", with: broker.first_name
    fill_in "Last Name", with: broker.last_name
    fill_in "Email", with: "example@user.com"
    fill_in "Password", with: broker.password, match: :prefer_exact
    fill_in "Password Confirmation", with: broker.password_confirmation
    fill_in "Description", with: broker.description
    fill_in "Phone",with: broker.phone
    fill_in "Firm name",with: broker.firm_name
    fill_in "Address Line 1",with: broker.address_line_1
    fill_in "City",with: broker.city
    fill_in "Zip/Postal/Code", with: broker.zip_postal_code
    fill_in "State/Province/County", with: broker.state_province_county
    # fill_in "Country", with: broker.country
    select "Nepal", from: "broker[country]"
    fill_in "Specialty", with: broker.specialty
    fill_in "Past Experience", with: broker.past_experience
    fill_in "Service Rate", with: broker.service_rates
    # attach_file("Avatar", Rails.root + "spec/fixtures/files/5.png", visible: false)
    fill_in "Broker Number", with: broker.broker_number
    click_on "Sign up"

    expect(page).to have_content "error"
  end
end