json.array!(@flower_boxes) do |flower_box|
  json.extract! flower_box, :price, :size, :color
  json.url flower_box_url(flower_box, format: :json)
end