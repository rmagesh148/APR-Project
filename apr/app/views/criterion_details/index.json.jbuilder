json.array!(@criterion_details) do |criterion_detail|
  json.extract! criterion_detail, :id, :action_plan_id, :criterion_id, :cd_date1, :cd_date2, :cd_field1, :cd_field2, :comments
  json.url criterion_detail_url(criterion_detail, format: :json)
end
