require "application_system_test_case"

class InPersonInterestResourcesTest < ApplicationSystemTestCase
  setup do
    @in_person_interest_resource = in_person_interest_resources(:one)
  end

  test "visiting the index" do
    visit in_person_interest_resources_url
    assert_selector "h1", text: "In person interest resources"
  end

  test "should create in person interest resource" do
    visit in_person_interest_resources_url
    click_on "New in person interest resource"

    fill_in "Address", with: @in_person_interest_resource.address
    fill_in "Bus routes", with: @in_person_interest_resource.bus_routes
    fill_in "Friday closing hours", with: @in_person_interest_resource.friday_closing_hours
    fill_in "Friday opening hours", with: @in_person_interest_resource.friday_opening_hours
    fill_in "Information", with: @in_person_interest_resource.information
    fill_in "Monday closing hours", with: @in_person_interest_resource.monday_closing_hours
    fill_in "Monday opening hours", with: @in_person_interest_resource.monday_opening_hours
    fill_in "Name", with: @in_person_interest_resource.name
    fill_in "Phone", with: @in_person_interest_resource.phone
    fill_in "Saturday closing hours", with: @in_person_interest_resource.saturday_closing_hours
    fill_in "Saturday opening hours", with: @in_person_interest_resource.saturday_opening_hours
    fill_in "Sunday closing hours", with: @in_person_interest_resource.sunday_closing_hours
    fill_in "Sunday opening hours", with: @in_person_interest_resource.sunday_opening_hours
    fill_in "Thursday closing hours", with: @in_person_interest_resource.thursday_closing_hours
    fill_in "Thursday opening hours", with: @in_person_interest_resource.thursday_opening_hours
    fill_in "Tuesday closing hours", with: @in_person_interest_resource.tuesday_closing_hours
    fill_in "Tuesday opening hours", with: @in_person_interest_resource.tuesday_opening_hours
    fill_in "Website", with: @in_person_interest_resource.website
    fill_in "Wednesday closing hours", with: @in_person_interest_resource.wednesday_closing_hours
    fill_in "Wednesday opening hours", with: @in_person_interest_resource.wednesday_opening_hours
    click_on "Create In person interest resource"

    assert_text "In person interest resource was successfully created"
    click_on "Back"
  end

  test "should update In person interest resource" do
    visit in_person_interest_resource_url(@in_person_interest_resource)
    click_on "Edit this in person interest resource", match: :first

    fill_in "Address", with: @in_person_interest_resource.address
    fill_in "Bus routes", with: @in_person_interest_resource.bus_routes
    fill_in "Friday closing hours", with: @in_person_interest_resource.friday_closing_hours.to_s
    fill_in "Friday opening hours", with: @in_person_interest_resource.friday_opening_hours.to_s
    fill_in "Information", with: @in_person_interest_resource.information
    fill_in "Monday closing hours", with: @in_person_interest_resource.monday_closing_hours.to_s
    fill_in "Monday opening hours", with: @in_person_interest_resource.monday_opening_hours.to_s
    fill_in "Name", with: @in_person_interest_resource.name
    fill_in "Phone", with: @in_person_interest_resource.phone
    fill_in "Saturday closing hours", with: @in_person_interest_resource.saturday_closing_hours.to_s
    fill_in "Saturday opening hours", with: @in_person_interest_resource.saturday_opening_hours.to_s
    fill_in "Sunday closing hours", with: @in_person_interest_resource.sunday_closing_hours.to_s
    fill_in "Sunday opening hours", with: @in_person_interest_resource.sunday_opening_hours.to_s
    fill_in "Thursday closing hours", with: @in_person_interest_resource.thursday_closing_hours.to_s
    fill_in "Thursday opening hours", with: @in_person_interest_resource.thursday_opening_hours.to_s
    fill_in "Tuesday closing hours", with: @in_person_interest_resource.tuesday_closing_hours.to_s
    fill_in "Tuesday opening hours", with: @in_person_interest_resource.tuesday_opening_hours.to_s
    fill_in "Website", with: @in_person_interest_resource.website
    fill_in "Wednesday closing hours", with: @in_person_interest_resource.wednesday_closing_hours.to_s
    fill_in "Wednesday opening hours", with: @in_person_interest_resource.wednesday_opening_hours.to_s
    click_on "Update In person interest resource"

    assert_text "In person interest resource was successfully updated"
    click_on "Back"
  end

  test "should destroy In person interest resource" do
    visit in_person_interest_resource_url(@in_person_interest_resource)
    click_on "Destroy this in person interest resource", match: :first

    assert_text "In person interest resource was successfully destroyed"
  end
end
