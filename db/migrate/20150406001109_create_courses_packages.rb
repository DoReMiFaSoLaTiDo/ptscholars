class CreateCoursesPackages < ActiveRecord::Migration
  def change
    create_table :courses_packages, id: false do |t|
      t.references :package, null: false, index: true
      t.references :course, null: false, index: true
    end
  end
  # Alternative
  # def change
  #   create_join_table :courses, :packages do |t|
  #     t.index :package_id
  #     t.index :course_id
  #   end
  # end
end
