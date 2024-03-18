INTERVAL = 2.minutes.freeze

FactoryBot.define do
  factory :pump_state, class: Telemetry::PumpState do
    active { rand(1..2).even? }
    association :pump, factory: :pump
    sequence :reported_at do |i|
      Time.now - (i * INTERVAL)
    end
  end
end
