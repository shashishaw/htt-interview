FactoryBot.define do
  factory :lift_station do
    name { "#{Faker::Address.city} Lift Station" }
    radius { rand(1..3) }
    height { rand(10..20) }
    lead_to_floor { height - rand(2..4) }
    off_to_floor { rand(2..4) }
    association :pump, factory: :pump
  end
end
