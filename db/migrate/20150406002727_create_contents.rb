class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :type
      t.string :name
      t.decimal :price
      t.string :url
      t.string :access_code

      t.timestamps null: false
    end
  end
end
