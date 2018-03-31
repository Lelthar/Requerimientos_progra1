class AddEstadoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :estado, :string
  end
end
