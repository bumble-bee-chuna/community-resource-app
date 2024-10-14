class InPersonWellbeingResource < ApplicationRecord
  acts_as_taggable_on :services_tags
  acts_as_taggable_on :culturally_specific_tags
end
