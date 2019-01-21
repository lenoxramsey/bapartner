class AddContacttitleToProspects < ActiveRecord::Migration[5.2]
  def change
    add_column :prospects, :contacttitle, :string
  end
end
