# represents a pump at a lift station
class Pump < ApplicationRecord
  #   has_many :pump_cycles
  has_many :pump_states

  def last_reported_state
    pump_states.last.active
  end
end
