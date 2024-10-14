class CreateInPersonRecoveryResources < ActiveRecord::Migration[7.2]
  def change
    create_table :in_person_recovery_resources do |t|
      t.string :name
      t.string :monday_opening_hours
      t.string :monday_closing_hours
      t.string :tuesday_opening_hours
      t.string :tuesday_closing_hours
      t.string :wednesday_opening_hours
      t.string :wednesday_closing_hours
      t.string :thursday_opening_hours
      t.string :thursday_closing_hours
      t.string :friday_opening_hours
      t.string :friday_closing_hours
      t.string :saturday_opening_hours
      t.string :saturday_closing_hours
      t.string :sunday_opening_hours
      t.string :sunday_closing_hours
      t.string :phone
      t.string :address
      t.string :website
      t.text :information

      t.timestamps
    end
  end
end
