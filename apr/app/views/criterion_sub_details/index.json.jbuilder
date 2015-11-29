json.array!(@criterion_sub_details) do |criterion_sub_detail|
  json.extract! criterion_sub_detail, :id, :criterion_detail_id, :action_item, :associated_tasks, :individuals_resp, :other_res_items, :cost_amt, :source_of_funding, :proj_start_date, :target_comp_date, :current_status
  json.url criterion_sub_detail_url(criterion_sub_detail, format: :json)
end
