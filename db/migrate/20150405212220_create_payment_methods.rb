class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :type
      t.text :account_name
      t.string :card_number
      t.date :expiry_date
      t.integer :ccv
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :payment_methods, :users
  end
end
