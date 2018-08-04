class CreateNewTotalCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :new_total_costs do |t|
      t.float :total

      t.timestamps
    end
  end
end
