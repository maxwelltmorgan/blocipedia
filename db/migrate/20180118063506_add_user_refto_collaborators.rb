class AddUserReftoCollaborators < ActiveRecord::Migration[5.1]
  def change
    add_index :collaborators, :user_id
  end
end
