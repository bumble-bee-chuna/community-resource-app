class CommunityResource < ApplicationRecord
	acts_as_taggable_on :recovery_tags
end
