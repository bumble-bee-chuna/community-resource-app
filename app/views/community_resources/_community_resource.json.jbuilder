json.extract! community_resource, :id, :name, :hours_of_operation, :phone, :address, :website, :information, :created_at, :updated_at
json.url community_resource_url(community_resource, format: :json)
