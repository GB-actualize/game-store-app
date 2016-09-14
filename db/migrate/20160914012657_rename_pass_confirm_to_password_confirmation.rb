class RenamePassConfirmToPasswordConfirmation < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :pass_confirm, :password_confirmation
  end
end
