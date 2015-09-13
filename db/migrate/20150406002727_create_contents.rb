class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :type
      t.string :name, default: ''
      t.decimal :price, default: 0.0
      t.string :url
      t.string :access_code

      t.timestamps null: false
    end
  end
end
