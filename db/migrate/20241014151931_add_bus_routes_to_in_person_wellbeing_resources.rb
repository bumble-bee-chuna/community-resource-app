class AddBusRoutesToInPersonWellbeingResources < ActiveRecord::Migration[7.2]
  def change
    add_column :in_person_wellbeing_resources, :bus_routes, :string
  end
end
