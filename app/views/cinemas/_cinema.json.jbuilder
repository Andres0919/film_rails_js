json.extract! cinema, :id, :name, :address, :status, :phone, :price_2D_movie, :price_3D_movie, :price_regular_chair, :price_premium_chair, :created_at, :updated_at
json.url cinema_url(cinema, format: :json)
