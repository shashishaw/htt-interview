class AddNameToLiftStation < ActiveRecord::Migration[7.1]
  def change
    add_column :lift_stations, :name, :string
  end
end
