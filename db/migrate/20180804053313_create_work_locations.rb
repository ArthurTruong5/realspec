class CreateWorkLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :work_locations do |t|
      t.string :address

      t.timestamps
    end
  end
end
