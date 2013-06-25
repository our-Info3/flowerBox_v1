json.array!(@orders) do |order|
  json.extract! order, :numberOfBoxes, :totalCosts, :user_id
  json.url order_url(order, format: :json)
end