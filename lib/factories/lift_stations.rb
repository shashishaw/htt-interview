module Factories
    class LiftStations
        def self.create
            LiftStation.create(attributes)
        end

        def self.build
            LiftStation.new attributes
        end


        def self.attributes
            {
                name: name
            }
        end

        def self.name
            "#{Faker::Address.city} Lift Station"
        end
    end
end