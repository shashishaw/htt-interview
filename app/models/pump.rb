# represents a pump at a lift station
class Pump < ApplicationRecord
  has_one :lift_station
  has_many :pump_states
end
