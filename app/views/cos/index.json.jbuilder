json.array!(@cos) do |co|
  json.extract! co, :id, :name, :status, :item_group_id
  json.url co_url(co, format: :json)
end
