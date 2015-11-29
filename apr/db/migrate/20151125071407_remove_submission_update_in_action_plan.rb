class RemoveSubmissionUpdateInActionPlan < ActiveRecord::Migration
  def change
    remove_column("action_plans", "submission_or_update")
    remove_column("action_plans", "submission_or_update_date")
  end
end
