class LiftStation < ApplicationRecord
  belongs_to :flow_total, class_name: 'Counter', optional: true
  belongs_to :inflow_rate, class_name: 'AnalogInput', optional: true
  belongs_to :outflow_rate, class_name: 'AnalogInput', optional: true
  belongs_to :pump_1, class_name: 'Pump', optional: true
  belongs_to :pump_2, class_name: 'Pump', optional: true
end
