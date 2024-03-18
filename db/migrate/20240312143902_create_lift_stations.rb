class CreateLiftStations < ActiveRecord::Migration[7.1]
  def change
    create_table :lift_stations do |t|
      t.float :radius
      t.float :height
      t.float :lead_to_floor
      t.float :off_to_floor

      t.integer :pump_id
      t.integer :inflow_rate_id
      t.integer :outflow_rate_id
      t.integer :flow_total_id

      t.timestamps
    end
  end
end
