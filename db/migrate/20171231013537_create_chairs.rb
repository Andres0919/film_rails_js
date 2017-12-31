class CreateChairs < ActiveRecord::Migration[5.1]
  def change
    create_table :chairs do |t|
      t.string :row
      t.string :column
      t.string :status
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
