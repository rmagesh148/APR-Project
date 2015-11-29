class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unit
      t.string :college

      t.timestamps null: false
    end
  end
end
