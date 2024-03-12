class CreateAnalogInputs < ActiveRecord::Migration[7.1]
  def change
    create_table :analog_inputs do |t|

      t.timestamps
    end
  end
end
