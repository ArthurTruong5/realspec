class CreateNewAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :new_addresses do |t|
      t.string :address
      t.float :rent

      t.timestamps
    end
  end
end
