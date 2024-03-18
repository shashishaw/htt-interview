# Telemetry data sent from a lift station reports the state of the pump (on/off).
# The station reports every two minutes.
# The state of the pump does not necessarily change each time the station reports.
#
# For the sake of the assignment, assume the pump state did not change between reports, rather the
# the pump switched on/off exactly when the telemtry message was sent.
class Measures::PumpState < ApplicationRecord
  self.table_name = 'pump_states'
  belongs_to :pump
end
