require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get businesses_url
    assert_response :success
  end

  test "should get new" do
    get new_business_url
    assert_response :success
  end

  test "should create business" do
    assert_difference('Business.count') do
      post businesses_url, params: { business: { address: @business.address, bbl: @business.bbl, bin: @business.bin, borough: @business.borough, business_name: @business.business_name, business_name_two: @business.business_name_two, census_tract: @business.census_tract, community_board: @business.community_board, detail: @business.detail, industry: @business.industry, latitude: @business.latitude, license_creation_date: @business.license_creation_date, license_expiration_date: @business.license_expiration_date, license_status: @business.license_status, license_type: @business.license_type, longitude: @business.longitude, nta: @business.nta, phone: @business.phone } }
    end

    assert_redirected_to business_url(Business.last)
  end

  test "should show business" do
    get business_url(@business)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_url(@business)
    assert_response :success
  end

  test "should update business" do
    patch business_url(@business), params: { business: { address: @business.address, bbl: @business.bbl, bin: @business.bin, borough: @business.borough, business_name: @business.business_name, business_name_two: @business.business_name_two, census_tract: @business.census_tract, community_board: @business.community_board, detail: @business.detail, industry: @business.industry, latitude: @business.latitude, license_creation_date: @business.license_creation_date, license_expiration_date: @business.license_expiration_date, license_status: @business.license_status, license_type: @business.license_type, longitude: @business.longitude, nta: @business.nta, phone: @business.phone } }
    assert_redirected_to business_url(@business)
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete business_url(@business)
    end

    assert_redirected_to businesses_url
  end
end
