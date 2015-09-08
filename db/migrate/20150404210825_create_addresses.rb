class CreateAddresses < ActiveRecord::Migration
  change_column :Addresses, :street, :text
  change_column :Addresses, :zip_code, :string
end
