class CreateCriterionSubDetails < ActiveRecord::Migration
  def change
    create_table :criterion_sub_details do |t|
      t.references :criterion_detail, index: true, foreign_key: true
      t.string :action_item
      t.string :associated_tasks
      t.string :individuals_resp
      t.string :other_res_items
      t.decimal :cost_amt
      t.string :source_of_funding
      t.date :proj_start_date
      t.date :target_comp_date
      t.string :current_status

      t.timestamps null: false
    end
  end
end
