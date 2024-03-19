# represents a pump at a lift station
class Pump < ApplicationRecord
  has_one :lift_station
  has_many :pump_states, class_name: 'Telemetry::PumpState'
  has_many :pump_cycles

  def on?
    pump_states.last&.active
  end

  def off?
    !on?
  end
end
