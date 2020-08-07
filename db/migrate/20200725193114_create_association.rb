class CreateAssociation < ActiveRecord::Migration[5.2]
  def change
      remove_column :events, :user_id
      add_column :events, :creator_id, :integer
  end
end
