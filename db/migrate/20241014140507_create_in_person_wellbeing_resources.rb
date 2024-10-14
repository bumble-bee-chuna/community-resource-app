class CreateInPersonWellbeingResources < ActiveRecord::Migration[7.2]
  def change
    create_table :in_person_wellbeing_resources do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.time :monday_opening_hours
      t.time :monday_closing_hours
      t.time :tuesday_opening_hours
      t.time :tuesday_closing_hours
      t.time :wednesday_opening_hours
      t.time :wednesday_closing_hours
      t.time :thursday_opening_hours
      t.time :thursday_closing_hours
      t.time :friday_opening_hours
      t.time :friday_closing_hours
      t.time :saturday_opening_hours
      t.time :saturday_closing_hours
      t.time :sunday_opening_hours
      t.time :sunday_closing_hours
      t.text :information

      t.timestamps
    end
  end
end
