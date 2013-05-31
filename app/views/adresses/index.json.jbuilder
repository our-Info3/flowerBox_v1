json.array!(@adresses) do |adress|
  json.extract! adress, :billing_street, :billing_house_number, :billing_zipcode, :billing_city, :shipping_street, :shipping_house_number, :shipping_zipcode, :shipping_city, :user_id
  json.url adress_url(adress, format: :json)
end