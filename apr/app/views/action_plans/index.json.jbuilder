json.array!(@action_plans) do |action_plan|
  # json.extract! action_plan, :id, :unit, :date_of_site_visit, :submission_or_update, :submission_or_update_date, :submitter_name, :submitter_title
  json.extract! action_plan, :id, :unit, :date_of_site_visit, :submitter_name, :submitter_title
  json.url action_plan_url(action_plan, format: :json)
end
