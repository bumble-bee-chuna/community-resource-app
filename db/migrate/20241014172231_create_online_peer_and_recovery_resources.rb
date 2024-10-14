class CreateOnlinePeerAndRecoveryResources < ActiveRecord::Migration[7.2]
  def change
    create_table :online_peer_and_recovery_resources do |t|
      t.string :name
      t.string :hosting_org
      t.string :hosting_org_website
      t.string :time_of_meetings
      t.text :how_to_access
      t.text :description

      t.timestamps
    end
  end
end
