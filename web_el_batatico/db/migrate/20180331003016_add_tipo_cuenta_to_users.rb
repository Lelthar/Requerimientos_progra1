class AddTipoCuentaToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tipo_cuenta, :string
  end
end
