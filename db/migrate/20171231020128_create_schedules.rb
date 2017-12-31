class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.datetime :schedule
      t.datetime :hour_finish
      t.string :status
      t.references :movie, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
