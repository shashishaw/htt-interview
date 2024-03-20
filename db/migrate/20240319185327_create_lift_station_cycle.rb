class CreateLiftStationCycle < ActiveRecord::Migration[7.1]
  def change
    create_table :lift_station_cycles do |t|
      t.integer :inflow_rate
      t.integer :outflow_rate
      t.integer :flow_total
      t.references :lift_station, null: false
      t.timestamps
    end
  end
end
