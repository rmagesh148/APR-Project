class CriterionDetail < ActiveRecord::Base
  belongs_to :action_plan
  belongs_to :criterion
end
