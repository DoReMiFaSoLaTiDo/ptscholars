class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :type
      t.text :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :ip_address
      t.references :user

      t.timestamps null: false

    end
  end
end
