class AddTimestampsToProspects < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :prospects, null: true
  end
end
