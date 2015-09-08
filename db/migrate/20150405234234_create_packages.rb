class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.text :package_name
      t.text :description

      t.timestamps null: false
    end
  end
end
