require "application_system_test_case"

class InPersonWellbeingResourcesTest < ApplicationSystemTestCase
  setup do
    @in_person_wellbeing_resource = in_person_wellbeing_resources(:one)
  end

  test "visiting the index" do
    visit in_person_wellbeing_resources_url
    assert_selector "h1", text: "In person wellbeing resources"
  end

  test "should create in person wellbeing resource" do
    visit in_person_wellbeing_resources_url
    click_on "New in person wellbeing resource"

    fill_in "Address", with: @in_person_wellbeing_resource.address
    fill_in "Friday closing hours", with: @in_person_wellbeing_resource.friday_closing_hours
    fill_in "Friday opening hours", with: @in_person_wellbeing_resource.friday_opening_hours
    fill_in "Information", with: @in_person_wellbeing_resource.information
    fill_in "Monday closing hours", with: @in_person_wellbeing_resource.monday_closing_hours
    fill_in "Monday opening hours", with: @in_person_wellbeing_resource.monday_opening_hours
    fill_in "Name", with: @in_person_wellbeing_resource.name
    fill_in "Phone", with: @in_person_wellbeing_resource.phone
    fill_in "Saturday closing hours", with: @in_person_wellbeing_resource.saturday_closing_hours
    fill_in "Saturday opening hours", with: @in_person_wellbeing_resource.saturday_opening_hours
    fill_in "Sunday closing hours", with: @in_person_wellbeing_resource.sunday_closing_hours
    fill_in "Sunday opening hours", with: @in_person_wellbeing_resource.sunday_opening_hours
    fill_in "Thursday closing hours", with: @in_person_wellbeing_resource.thursday_closing_hours
    fill_in "Thursday opening hours", with: @in_person_wellbeing_resource.thursday_opening_hours
    fill_in "Tuesday closing hours", with: @in_person_wellbeing_resource.tuesday_closing_hours
    fill_in "Tuesday opening hours", with: @in_person_wellbeing_resource.tuesday_opening_hours
    fill_in "Website", with: @in_person_wellbeing_resource.website
    fill_in "Wednesday closing hours", with: @in_person_wellbeing_resource.wednesday_closing_hours
    fill_in "Wednesday opening hours", with: @in_person_wellbeing_resource.wednesday_opening_hours
    click_on "Create In person wellbeing resource"

    assert_text "In person wellbeing resource was successfully created"
    click_on "Back"
  end

  test "should update In person wellbeing resource" do
    visit in_person_wellbeing_resource_url(@in_person_wellbeing_resource)
    click_on "Edit this in person wellbeing resource", match: :first

    fill_in "Address", with: @in_person_wellbeing_resource.address
    fill_in "Friday closing hours", with: @in_person_wellbeing_resource.friday_closing_hours.to_s
    fill_in "Friday opening hours", with: @in_person_wellbeing_resource.friday_opening_hours.to_s
    fill_in "Information", with: @in_person_wellbeing_resource.information
    fill_in "Monday closing hours", with: @in_person_wellbeing_resource.monday_closing_hours.to_s
    fill_in "Monday opening hours", with: @in_person_wellbeing_resource.monday_opening_hours.to_s
    fill_in "Name", with: @in_person_wellbeing_resource.name
    fill_in "Phone", with: @in_person_wellbeing_resource.phone
    fill_in "Saturday closing hours", with: @in_person_wellbeing_resource.saturday_closing_hours.to_s
    fill_in "Saturday opening hours", with: @in_person_wellbeing_resource.saturday_opening_hours.to_s
    fill_in "Sunday closing hours", with: @in_person_wellbeing_resource.sunday_closing_hours.to_s
    fill_in "Sunday opening hours", with: @in_person_wellbeing_resource.sunday_opening_hours.to_s
    fill_in "Thursday closing hours", with: @in_person_wellbeing_resource.thursday_closing_hours.to_s
    fill_in "Thursday opening hours", with: @in_person_wellbeing_resource.thursday_opening_hours.to_s
    fill_in "Tuesday closing hours", with: @in_person_wellbeing_resource.tuesday_closing_hours.to_s
    fill_in "Tuesday opening hours", with: @in_person_wellbeing_resource.tuesday_opening_hours.to_s
    fill_in "Website", with: @in_person_wellbeing_resource.website
    fill_in "Wednesday closing hours", with: @in_person_wellbeing_resource.wednesday_closing_hours.to_s
    fill_in "Wednesday opening hours", with: @in_person_wellbeing_resource.wednesday_opening_hours.to_s
    click_on "Update In person wellbeing resource"

    assert_text "In person wellbeing resource was successfully updated"
    click_on "Back"
  end

  test "should destroy In person wellbeing resource" do
    visit in_person_wellbeing_resource_url(@in_person_wellbeing_resource)
    click_on "Destroy this in person wellbeing resource", match: :first

    assert_text "In person wellbeing resource was successfully destroyed"
  end
end
