class CreateCounters < ActiveRecord::Migration[7.1]
  def change
    create_table :counters do |t|

      t.timestamps
    end
  end
end
