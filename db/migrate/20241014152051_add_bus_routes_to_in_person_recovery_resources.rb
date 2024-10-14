class AddBusRoutesToInPersonRecoveryResources < ActiveRecord::Migration[7.2]
  def change
    add_column :in_person_recovery_resources, :bus_routes, :string
  end
end
