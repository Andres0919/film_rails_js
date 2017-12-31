class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :abstract
      t.integer :duration
      t.date :date_start
      t.date :date_finish

      t.timestamps
    end
  end
end
