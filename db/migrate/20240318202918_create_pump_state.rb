class CreatePumpState < ActiveRecord::Migration[7.1]
  def change
    create_table :pump_states do |t|
      t.boolean :active, null: false
      t.datetime :reported_at, null: false
      t.references :pump
      t.timestamps
    end
  end
end
