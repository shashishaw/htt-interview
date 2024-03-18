require 'rails_helper'

describe LiftStation do
  context 'when a new lift_station is created' do
    let(:lift_station) { FactoryBot.create :lift_station }

    it 'should be truthy' do
      expect(lift_station).to be_truthy
    end

    it 'should have a pump' do
      expect(lift_station.pump).to be_a(Pump)
    end
  end
end
