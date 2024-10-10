require "test_helper"

class CommunityResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_resource = community_resources(:one)
  end

  test "should get index" do
    get community_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_community_resource_url
    assert_response :success
  end

  test "should create community_resource" do
    assert_difference("CommunityResource.count") do
      post community_resources_url, params: { community_resource: { address: @community_resource.address, hours_of_operation: @community_resource.hours_of_operation, information: @community_resource.information, name: @community_resource.name, phone: @community_resource.phone, website: @community_resource.website } }
    end

    assert_redirected_to community_resource_url(CommunityResource.last)
  end

  test "should show community_resource" do
    get community_resource_url(@community_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_resource_url(@community_resource)
    assert_response :success
  end

  test "should update community_resource" do
    patch community_resource_url(@community_resource), params: { community_resource: { address: @community_resource.address, hours_of_operation: @community_resource.hours_of_operation, information: @community_resource.information, name: @community_resource.name, phone: @community_resource.phone, website: @community_resource.website } }
    assert_redirected_to community_resource_url(@community_resource)
  end

  test "should destroy community_resource" do
    assert_difference("CommunityResource.count", -1) do
      delete community_resource_url(@community_resource)
    end

    assert_redirected_to community_resources_url
  end
end
