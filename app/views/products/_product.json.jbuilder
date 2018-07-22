json.extract! product, :id, :name, :about, :need_people, :goal, :created_at, :updated_at
json.url product_url(product, format: :json)
