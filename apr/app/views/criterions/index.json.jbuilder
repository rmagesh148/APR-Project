json.array!(@criterions) do |criterion|
  json.extract! criterion, :id, :criterion_number, :description
  json.url criterion_url(criterion, format: :json)
end
