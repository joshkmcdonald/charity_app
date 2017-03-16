class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.string :charity_name
      t.string :tax_id

      t.timestamps
    end
  end
end
