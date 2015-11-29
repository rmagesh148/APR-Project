class AlterActionPlans < ActiveRecord::Migration
  def up
  	remove_column("action_plans", "unit")
  	rename_column("action_plans", "submitter_name", "submitter_first_name")
  	add_column("action_plans", "submitter_last_name", :string)
  end
  def down
  	remove_column("action_plans", "submitter_last_name")  	
  	rename_column("action_plans", "submitter_first_name", "submitter_name")
  	add_column("action_plans", "unit", :string, :null => false)
  end
end
