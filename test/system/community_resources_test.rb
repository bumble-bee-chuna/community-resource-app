require "application_system_test_case"

class CommunityResourcesTest < ApplicationSystemTestCase
  setup do
    @community_resource = community_resources(:one)
  end

  test "visiting the index" do
    visit community_resources_url
    assert_selector "h1", text: "Community resources"
  end

  test "should create community resource" do
    visit community_resources_url
    click_on "New community resource"

    fill_in "Address", with: @community_resource.address
    fill_in "Hours of operation", with: @community_resource.hours_of_operation
    fill_in "Information", with: @community_resource.information
    fill_in "Name", with: @community_resource.name
    fill_in "Phone", with: @community_resource.phone
    fill_in "Website", with: @community_resource.website
    click_on "Create Community resource"

    assert_text "Community resource was successfully created"
    click_on "Back"
  end

  test "should update Community resource" do
    visit community_resource_url(@community_resource)
    click_on "Edit this community resource", match: :first

    fill_in "Address", with: @community_resource.address
    fill_in "Hours of operation", with: @community_resource.hours_of_operation
    fill_in "Information", with: @community_resource.information
    fill_in "Name", with: @community_resource.name
    fill_in "Phone", with: @community_resource.phone
    fill_in "Website", with: @community_resource.website
    click_on "Update Community resource"

    assert_text "Community resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Community resource" do
    visit community_resource_url(@community_resource)
    click_on "Destroy this community resource", match: :first

    assert_text "Community resource was successfully destroyed"
  end
end
