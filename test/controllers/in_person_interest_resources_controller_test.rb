require "test_helper"

class InPersonInterestResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @in_person_interest_resource = in_person_interest_resources(:one)
  end

  test "should get index" do
    get in_person_interest_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_in_person_interest_resource_url
    assert_response :success
  end

  test "should create in_person_interest_resource" do
    assert_difference("InPersonInterestResource.count") do
      post in_person_interest_resources_url, params: { in_person_interest_resource: { address: @in_person_interest_resource.address, bus_routes: @in_person_interest_resource.bus_routes, friday_closing_hours: @in_person_interest_resource.friday_closing_hours, friday_opening_hours: @in_person_interest_resource.friday_opening_hours, information: @in_person_interest_resource.information, monday_closing_hours: @in_person_interest_resource.monday_closing_hours, monday_opening_hours: @in_person_interest_resource.monday_opening_hours, name: @in_person_interest_resource.name, phone: @in_person_interest_resource.phone, saturday_closing_hours: @in_person_interest_resource.saturday_closing_hours, saturday_opening_hours: @in_person_interest_resource.saturday_opening_hours, sunday_closing_hours: @in_person_interest_resource.sunday_closing_hours, sunday_opening_hours: @in_person_interest_resource.sunday_opening_hours, thursday_closing_hours: @in_person_interest_resource.thursday_closing_hours, thursday_opening_hours: @in_person_interest_resource.thursday_opening_hours, tuesday_closing_hours: @in_person_interest_resource.tuesday_closing_hours, tuesday_opening_hours: @in_person_interest_resource.tuesday_opening_hours, website: @in_person_interest_resource.website, wednesday_closing_hours: @in_person_interest_resource.wednesday_closing_hours, wednesday_opening_hours: @in_person_interest_resource.wednesday_opening_hours } }
    end

    assert_redirected_to in_person_interest_resource_url(InPersonInterestResource.last)
  end

  test "should show in_person_interest_resource" do
    get in_person_interest_resource_url(@in_person_interest_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_in_person_interest_resource_url(@in_person_interest_resource)
    assert_response :success
  end

  test "should update in_person_interest_resource" do
    patch in_person_interest_resource_url(@in_person_interest_resource), params: { in_person_interest_resource: { address: @in_person_interest_resource.address, bus_routes: @in_person_interest_resource.bus_routes, friday_closing_hours: @in_person_interest_resource.friday_closing_hours, friday_opening_hours: @in_person_interest_resource.friday_opening_hours, information: @in_person_interest_resource.information, monday_closing_hours: @in_person_interest_resource.monday_closing_hours, monday_opening_hours: @in_person_interest_resource.monday_opening_hours, name: @in_person_interest_resource.name, phone: @in_person_interest_resource.phone, saturday_closing_hours: @in_person_interest_resource.saturday_closing_hours, saturday_opening_hours: @in_person_interest_resource.saturday_opening_hours, sunday_closing_hours: @in_person_interest_resource.sunday_closing_hours, sunday_opening_hours: @in_person_interest_resource.sunday_opening_hours, thursday_closing_hours: @in_person_interest_resource.thursday_closing_hours, thursday_opening_hours: @in_person_interest_resource.thursday_opening_hours, tuesday_closing_hours: @in_person_interest_resource.tuesday_closing_hours, tuesday_opening_hours: @in_person_interest_resource.tuesday_opening_hours, website: @in_person_interest_resource.website, wednesday_closing_hours: @in_person_interest_resource.wednesday_closing_hours, wednesday_opening_hours: @in_person_interest_resource.wednesday_opening_hours } }
    assert_redirected_to in_person_interest_resource_url(@in_person_interest_resource)
  end

  test "should destroy in_person_interest_resource" do
    assert_difference("InPersonInterestResource.count", -1) do
      delete in_person_interest_resource_url(@in_person_interest_resource)
    end

    assert_redirected_to in_person_interest_resources_url
  end
end
