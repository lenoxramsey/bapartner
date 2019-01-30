class AddUserIdToProspects < ActiveRecord::Migration[5.2]
  def change
    add_column :prospects, :user_id, :integer
  end
end
