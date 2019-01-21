class CreateProspects < ActiveRecord::Migration[5.2]
  def change
    create_table :prospects do |t|
      t.string :committeename
      t.string :contactfirst
      t.string :contactlast
      t.string :contactemail
      t.string :contactphone
      t.string :billingstreetone
      t.string :billingstreettwo
      t.string :billingcity
      t.string :billingstate
      t.string :billingzip
      t.string :committeeurl
    end
  end
end
