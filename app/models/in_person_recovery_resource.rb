class InPersonRecoveryResource < ApplicationRecord
   acts_as_taggable_on :tags
   acts_as_taggable_on :services_tags
   acts_as_taggable_on :recovery_models_tags
end
