class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    # TODO
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.timestamps
    end
  end
end
