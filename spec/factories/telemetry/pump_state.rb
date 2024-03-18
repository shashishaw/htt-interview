FactoryBot.define do
  factory :pump_state, class: Telemetry::PumpState do
    active { rand(1..2).even? }
    reported_at { Time.now }
    association :pump, factory: :pump
  end
end
