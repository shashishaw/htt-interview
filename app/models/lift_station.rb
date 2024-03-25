# Represents a lift station for water/wastewater utilities. Consist of:
# - pump
# - a tank
# - a lead float (at fixed height in tank)
# - an off float (at fixed height in tank)
class LiftStation < ApplicationRecord
  belongs_to :pump, class_name: 'Pump'

  # TODO: implement method
  # The total volume of the lift stations tank

  # Method to calculate the total volume of the lift station's tank
  def total_tank_volume
    Math::PI * radius**2 * height
  end

  # Method to calculate the volume of the tank from the height of the off float to the height of the lead float
  def lead_to_off_volume
    Math::PI * radius**2 * (lead_to_floor - off_to_floor)
  end

  def inflow_rate
    inflow_volume = lead_to_off_volume
    inflow_time = pump_cycles.sum(:duration)
    inflow_volume / inflow_time if inflow_time > 0
  end

  def outflow_rate
    outflow_volume = lead_to_off_volume
    outflow_time = pump_cycles.sum(:duration)
    outflow_volume / outflow_time if outflow_time > 0
  end

  def flow_total
    lead_to_off_volume * pump_cycles.count
  end
end
