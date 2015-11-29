class CreateCriterions < ActiveRecord::Migration
  def change
    create_table :criterions do |t|
      t.integer :criterion_number
      t.string :description

      t.timestamps null: false
    end
  end
end
