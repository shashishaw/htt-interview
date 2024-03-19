require 'rails_helper'

describe PumpCycle do
  context 'when pump_states are created' do
    let(:pump) { FactoryBot.create :pump } # pump defaults to off
    # TODO: get test to pass
    it 'starts a new cycle when the pump was off and is now on' do
      expect { FactoryBot.create :pump_state, pump:, active: true }.to change { PumpCycle.for_pump(pump).count }.by(1)
    end

    # TODO: get test to pass
    it 'ends a cycle when the pump was on and is now off' do
      FactoryBot.create :pump_state, pump:, active: true # turn pump on
      FactoryBot.create :pump_state, pump:, active: false # trun pump off

      expect(PumpCycle.for_pump(pump).last.ended?).to be_truthy
    end

    # TODO: get test to pass
    it 'sets the correct duration when a pump cycle ends' do
      time = Time.now
      FactoryBot.create :pump_state, pump:, active: true, reported_at: (time - 120.seconds)

      expect do
        FactoryBot.create :pump_state, pump:, active: false, reported_at: time
      end.to change {
               PumpCycle.for_pump(pump).last.duration
             }.to(120)
    end
  end
end
