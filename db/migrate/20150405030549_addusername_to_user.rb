class AddusernameToUser < ActiveRecord::Migration
  def change_table
    remove :user_id
    string :user_name
  end
end
