class CreateCommunityResources < ActiveRecord::Migration[7.2]
  def change
    create_table :community_resources do |t|
      t.string :name
      t.string :hours_of_operation
      t.string :phone
      t.string :address
      t.string :website
      t.text :information

      t.timestamps
    end
  end
end
