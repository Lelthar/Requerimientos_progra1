class RenameSeasonToSeasonId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :chat_cliente_admins, :users_id, :user_id
  end
end
