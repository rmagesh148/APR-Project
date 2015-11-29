class CreateCriterionDetails < ActiveRecord::Migration
  def change
    create_table :criterion_details do |t|
      t.references :action_plan, index: true, foreign_key: true
      t.references :criterion, index: true, foreign_key: true
      t.date :cd_date1
      t.date :cd_date2
      t.string :cd_field1
      t.string :cd_field2
      t.string :comments

      t.timestamps null: false
    end
  end
end
