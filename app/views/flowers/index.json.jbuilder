json.array!(@flowers) do |flower|
  json.extract! flower, :name, :flower_price, :box_id
  json.url flower_url(flower, format: :json)
end