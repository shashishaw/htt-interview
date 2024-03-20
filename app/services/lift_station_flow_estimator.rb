# calculates estimates for the
#  -inflow rate
#  - flow rate
#  - flow total
# and creates a new LiftStationCycle to record the data
class LiftStationFlowEstimator
  def initialize(lift_station:)
    @lift_station = lift_station
  end

  # calculate the values and create a new LiftStationCycle to record
  def perform
    raise NotImplementedError, 'This method still needs to be implemented.'
  end

  # represents the rate of liquid flow into a lift station tank
  def inflow_rate
    raise NotImplementedError, 'This method still needs to be implemented.'
  end

  # the total amount of liquid pumped out of the tank
  # NOTE: this should include the amount of liquid that flowed into the tank
  #       while the pump ran because water does not stop flowing into the tank
  #       while the pump is on
  # use the most recent inflow rate as an estimate
  def flow_total
    raise NotImplementedError, 'This method still needs to be implemented.'
  end

  # represents the rate of liquid pumped out of the tank
  def outflow_rate
    raise NotImplementedError, 'This method still needs to be implemented.'
  end
end
