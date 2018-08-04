class CreateNewTravelCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :new_travel_costs do |t|
      t.float :bus
      t.float :car
      t.float :train
      t.float :light_rail

      t.timestamps
    end
  end
end
