class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :num_chairs
      t.string :status
      t.references :cinema, foreign_key: true

      t.timestamps
    end
  end
end
