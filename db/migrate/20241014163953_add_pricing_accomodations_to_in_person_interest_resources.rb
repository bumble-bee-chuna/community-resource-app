class AddPricingAccomodationsToInPersonInterestResources < ActiveRecord::Migration[7.2]
  def change
    add_column :in_person_interest_resources, :pricing_accomodations, :text
  end
end
