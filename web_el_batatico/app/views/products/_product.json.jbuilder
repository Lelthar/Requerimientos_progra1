json.extract! product, :id, :id_producto, :nombre, :detalle, :precio, :fecha_inicio, :fecha_final, :disponibles, :created_at, :updated_at
json.url product_url(product, format: :json)
