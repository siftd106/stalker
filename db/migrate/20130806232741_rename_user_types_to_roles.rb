class RenameUserTypesToRoles < ActiveRecord::Migration
  def change
    rename_table :user_types, :roles
  end
end
