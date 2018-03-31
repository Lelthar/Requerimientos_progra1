class AddDireccionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :direccion, :string
  end
end
