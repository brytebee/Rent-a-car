class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :pick_up_date
      t.date :drop_off_date
      t.date :pick_up_city
      t.date :return_city
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end

