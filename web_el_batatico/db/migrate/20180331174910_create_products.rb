class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :id_producto
      t.string :nombre
      t.string :detalle
      t.integer :precio
      t.date :fecha_inicio
      t.date :fecha_final
      t.integer :disponibles

      t.timestamps
    end
  end
end
