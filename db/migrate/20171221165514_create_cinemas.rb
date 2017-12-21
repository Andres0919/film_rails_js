class CreateCinemas < ActiveRecord::Migration[5.1]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :address
      t.string :status
      t.string :phone
      t.integer :price_2D_movie
      t.integer :price_3D_movie
      t.integer :price_regular_chair
      t.integer :price_premium_chair

      t.timestamps
    end
  end
end
