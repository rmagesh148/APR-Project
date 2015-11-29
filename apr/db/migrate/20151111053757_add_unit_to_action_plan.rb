class AddUnitToActionPlan < ActiveRecord::Migration
  def change
    add_reference :action_plans, :unit, index: true, foreign_key: true
  end
end
