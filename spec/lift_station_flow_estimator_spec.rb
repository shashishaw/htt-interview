require 'rails_helper'

describe LiftStationFlowEstimator do
  describe '#perform' do
    let(:lift_station) { FactoryBot.create :lift_station, pump: FactoryBot.create(:pump_with_telemetry) }

    it 'should not error' do
      expect { LiftStationFlowEstimator.new(lift_station:).perform }.not_to raise_error
    end

    it 'should create a lift station cycle' do
      expect { LiftStationFlowEstimator.new(lift_station:).perform }.to change { LiftStationCycle.count }.by(1)
    end
  end

  describe '#inflow_rate' do
    it 'should be implemented' do
      expect { LiftStationFlowEstimator.new(lift_station:).inflow_rate }.not_to raise_error(NotImplementedError)
    end

    # TODO: write a test validating LiftStationFlowEstimator#inflow_rate returns the correct inflow rate
    it 'should calculate the correct inflow rate' do
    end
  end

  describe '#outflow_rate' do
    it 'should be implemented' do
      expect { LiftStationFlowEstimator.new(lift_station:).outflow_rate }.not_to raise_error(NotImplementedError)
    end

    # TODO: write a test validating LiftStationFlowEstimator#outflow_rate returns the correct outflow rate
    it 'should calculate the correct inflow rate' do
    end
  end

  describe '#flow_total' do
    it 'should be implemented' do
      expect { LiftStationFlowEstimator.new(lift_station:).flow_total }.not_to raise_error(NotImplementedError)
    end

    # TODO: write a test validating LiftStationFlowEstimator#flow_total returns the correct flow rate
    it 'should calculate the correct flow_total' do
    end
  end
end
