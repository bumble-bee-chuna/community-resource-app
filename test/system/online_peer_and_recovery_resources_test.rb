require "application_system_test_case"

class OnlinePeerAndRecoveryResourcesTest < ApplicationSystemTestCase
  setup do
    @online_peer_and_recovery_resource = online_peer_and_recovery_resources(:one)
  end

  test "visiting the index" do
    visit online_peer_and_recovery_resources_url
    assert_selector "h1", text: "Online peer and recovery resources"
  end

  test "should create online peer and recovery resource" do
    visit online_peer_and_recovery_resources_url
    click_on "New online peer and recovery resource"

    fill_in "Description", with: @online_peer_and_recovery_resource.description
    fill_in "Hosting org", with: @online_peer_and_recovery_resource.hosting_org
    fill_in "Hosting org website", with: @online_peer_and_recovery_resource.hosting_org_website
    fill_in "How to access", with: @online_peer_and_recovery_resource.how_to_access
    fill_in "Name", with: @online_peer_and_recovery_resource.name
    fill_in "Time of meetings", with: @online_peer_and_recovery_resource.time_of_meetings
    click_on "Create Online peer and recovery resource"

    assert_text "Online peer and recovery resource was successfully created"
    click_on "Back"
  end

  test "should update Online peer and recovery resource" do
    visit online_peer_and_recovery_resource_url(@online_peer_and_recovery_resource)
    click_on "Edit this online peer and recovery resource", match: :first

    fill_in "Description", with: @online_peer_and_recovery_resource.description
    fill_in "Hosting org", with: @online_peer_and_recovery_resource.hosting_org
    fill_in "Hosting org website", with: @online_peer_and_recovery_resource.hosting_org_website
    fill_in "How to access", with: @online_peer_and_recovery_resource.how_to_access
    fill_in "Name", with: @online_peer_and_recovery_resource.name
    fill_in "Time of meetings", with: @online_peer_and_recovery_resource.time_of_meetings
    click_on "Update Online peer and recovery resource"

    assert_text "Online peer and recovery resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Online peer and recovery resource" do
    visit online_peer_and_recovery_resource_url(@online_peer_and_recovery_resource)
    click_on "Destroy this online peer and recovery resource", match: :first

    assert_text "Online peer and recovery resource was successfully destroyed"
  end
end
