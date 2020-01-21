require "application_system_test_case"

class BusinessesTest < ApplicationSystemTestCase
  setup do
    @business = businesses(:one)
  end

  test "visiting the index" do
    visit businesses_url
    assert_selector "h1", text: "Businesses"
  end

  test "creating a Business" do
    visit businesses_url
    click_on "New Business"

    fill_in "Address", with: @business.address
    fill_in "Bbl", with: @business.bbl
    fill_in "Bin", with: @business.bin
    fill_in "Borough", with: @business.borough
    fill_in "Business name", with: @business.business_name
    fill_in "Business name two", with: @business.business_name_two
    fill_in "Census tract", with: @business.census_tract
    fill_in "Community board", with: @business.community_board
    fill_in "Detail", with: @business.detail
    fill_in "Industry", with: @business.industry
    fill_in "Latitude", with: @business.latitude
    fill_in "License creation date", with: @business.license_creation_date
    fill_in "License expiration date", with: @business.license_expiration_date
    fill_in "License status", with: @business.license_status
    fill_in "License type", with: @business.license_type
    fill_in "Longitude", with: @business.longitude
    fill_in "Nta", with: @business.nta
    fill_in "Phone", with: @business.phone
    click_on "Create Business"

    assert_text "Business was successfully created"
    click_on "Back"
  end

  test "updating a Business" do
    visit businesses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @business.address
    fill_in "Bbl", with: @business.bbl
    fill_in "Bin", with: @business.bin
    fill_in "Borough", with: @business.borough
    fill_in "Business name", with: @business.business_name
    fill_in "Business name two", with: @business.business_name_two
    fill_in "Census tract", with: @business.census_tract
    fill_in "Community board", with: @business.community_board
    fill_in "Detail", with: @business.detail
    fill_in "Industry", with: @business.industry
    fill_in "Latitude", with: @business.latitude
    fill_in "License creation date", with: @business.license_creation_date
    fill_in "License expiration date", with: @business.license_expiration_date
    fill_in "License status", with: @business.license_status
    fill_in "License type", with: @business.license_type
    fill_in "Longitude", with: @business.longitude
    fill_in "Nta", with: @business.nta
    fill_in "Phone", with: @business.phone
    click_on "Update Business"

    assert_text "Business was successfully updated"
    click_on "Back"
  end

  test "destroying a Business" do
    visit businesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Business was successfully destroyed"
  end
end
