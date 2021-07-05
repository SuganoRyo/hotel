class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.string :name
      t.text :introduction
      t.integer :price
      t.text :address
      t.string :image

      t.timestamps
    end
  end
end
