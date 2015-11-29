json.array!(@units) do |unit|
  json.extract! unit, :id, :unit, :college
  json.url unit_url(unit, format: :json)
end
