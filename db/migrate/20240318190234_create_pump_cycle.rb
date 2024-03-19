class CreatePumpCycle < ActiveRecord::Migration[7.1]
  def change
    create_table :pump_cycles do |t|
      t.datetime :started_at, null: false
      t.integer :duration

      t.references :pump, null: false
      t.timestamps
    end
  end
end
