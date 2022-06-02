class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :image
      t.string :color
      t.integer :year
      t.string :kind
      t.integer :seat
      t.boolean :aircon
      t.money :price
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
