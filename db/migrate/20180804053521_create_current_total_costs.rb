class CreateCurrentTotalCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :current_total_costs do |t|
      t.float :total

      t.timestamps
    end
  end
end
