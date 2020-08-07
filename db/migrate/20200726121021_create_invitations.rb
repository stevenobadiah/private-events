class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.integer :recipient_id
      t.integer :coordinated_events_id

      t.timestamps
    end
  end
end
