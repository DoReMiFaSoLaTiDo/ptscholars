class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.text :name
      t.text :description

      t.timestamps null: false
    end
  end
end
