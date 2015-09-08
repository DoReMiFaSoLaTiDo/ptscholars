class CreateCourseContents < ActiveRecord::Migration
  def change
    create_table :course_contents do |t|
      t.references :course, index: true
      t.references :content, index: true
      t.integer :credit

      t.timestamps null: false
    end
    add_foreign_key :course_contents, :courses
    add_foreign_key :course_contents, :contents
  end
end
