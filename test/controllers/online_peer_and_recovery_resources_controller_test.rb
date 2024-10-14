require "test_helper"

class OnlinePeerAndRecoveryResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @online_peer_and_recovery_resource = online_peer_and_recovery_resources(:one)
  end

  test "should get index" do
    get online_peer_and_recovery_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_online_peer_and_recovery_resource_url
    assert_response :success
  end

  test "should create online_peer_and_recovery_resource" do
    assert_difference("OnlinePeerAndRecoveryResource.count") do
      post online_peer_and_recovery_resources_url, params: { online_peer_and_recovery_resource: { description: @online_peer_and_recovery_resource.description, hosting_org: @online_peer_and_recovery_resource.hosting_org, hosting_org_website: @online_peer_and_recovery_resource.hosting_org_website, how_to_access: @online_peer_and_recovery_resource.how_to_access, name: @online_peer_and_recovery_resource.name, time_of_meetings: @online_peer_and_recovery_resource.time_of_meetings } }
    end

    assert_redirected_to online_peer_and_recovery_resource_url(OnlinePeerAndRecoveryResource.last)
  end

  test "should show online_peer_and_recovery_resource" do
    get online_peer_and_recovery_resource_url(@online_peer_and_recovery_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_online_peer_and_recovery_resource_url(@online_peer_and_recovery_resource)
    assert_response :success
  end

  test "should update online_peer_and_recovery_resource" do
    patch online_peer_and_recovery_resource_url(@online_peer_and_recovery_resource), params: { online_peer_and_recovery_resource: { description: @online_peer_and_recovery_resource.description, hosting_org: @online_peer_and_recovery_resource.hosting_org, hosting_org_website: @online_peer_and_recovery_resource.hosting_org_website, how_to_access: @online_peer_and_recovery_resource.how_to_access, name: @online_peer_and_recovery_resource.name, time_of_meetings: @online_peer_and_recovery_resource.time_of_meetings } }
    assert_redirected_to online_peer_and_recovery_resource_url(@online_peer_and_recovery_resource)
  end

  test "should destroy online_peer_and_recovery_resource" do
    assert_difference("OnlinePeerAndRecoveryResource.count", -1) do
      delete online_peer_and_recovery_resource_url(@online_peer_and_recovery_resource)
    end

    assert_redirected_to online_peer_and_recovery_resources_url
  end
end
