class Measures::PumpCycle < ApplicationRecord
  self.table_name = 'pump_cycles'
  belongs_to :pump
end
