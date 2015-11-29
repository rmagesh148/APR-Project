class CreateActionPlans < ActiveRecord::Migration
  def change
    create_table :action_plans do |t|
      t.string :unit
      t.date :date_of_site_visit
      t.string :submission_or_update
      t.date :submission_or_update_date
      t.string :submitter_name
      t.string :submitter_title

      t.timestamps null: false
    end
  end
end
