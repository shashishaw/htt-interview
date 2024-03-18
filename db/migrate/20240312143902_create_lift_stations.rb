class CreateLiftStations < ActiveRecord::Migration[7.1]
  def change
    create_table :lift_stations do |t|
      t.float :radius
      t.float :height
      t.float :lead_to_floor
      t.float :off_to_floor

      t.integer :pump_id

      t.timestamps
    end
  end
end
