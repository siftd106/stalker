class RemoveUserUserTypeIdColumn < ActiveRecord::Migration
  def change
    remove_column :users, :user_type_id
  end
end
