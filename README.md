
<img width="400" alt="Color=Full" src="https://github.com/HighTideTechnologies/htt-interview/assets/55821525/1785501d-da4a-4b3a-a164-2af33f6ab360">

# High Tide Technologies Code Assessment

Welcome to the High Tide Technologies Code Assesment! The goal of this assessment is to evaluate a candidate's ability to gather context, ask questions, and implement a solution to an unfamiliar problem.

Your goal will be to implement a service that will estimate the flow of water into/out of a wasterwater lift station.

### STILL A WORK IN PROGRESS

### Table of Contents
- [Concepts](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#concepts)
    - [What is a Lift Station?](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#what-is-a-lift-station)
    - [Components](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#components)
        - [Float Switches](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#float-switches)
        - [Pump](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#pump)
        - [Tank](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#tank)
- [Goal](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#goal)
- [Instructions](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#instructions)
    - [Models](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#models)
        - [Lift Stations](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#lift-stations)
        - [Pumps](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#pumps)
- [Getting Started](https://github.com/HighTideTechnologies/htt-interview?tab=readme-ov-file#getting-started)

## Concepts
#### What is a lift station?
Lift stations transport wastewater from residential and commercial areas to a proper wastewater treatment plants. Water flows into a wet well (or tank), and when the water in the tank reaches a certain height, a pump will turn on and pump water out of the tank to a higher elevation... thus, a _lift_ station.

![image](https://github.com/HighTideTechnologies/htt-interview/assets/55821525/ef2e4163-fc96-4569-b162-cbe76ce2c8a7)


#### Components
Lift stations have a few component parts relevant to your assignment:

- a lead float switch
- an off float switch
- a pump
- a tank

###### Float Switches
A float switch is a type of liquid level sensor that uses a float to operate a switch. Float switches are commonly used to control other devices, such as alarms and pumps, when a liquid level rises or falls to a specific point.

For your assignment, there are two relevant floats: the lead float and the off float. Each of the floats sits at a fixed height in the tank and control the pump in the tank.

The off float will be positioned near (but not on) the bottom of tank, and when the water level falls below it's level, the pump in the tank will switch off.

The lead float is positioned higher in the tank, and when the water level reaches the lead float, the pump in the tank will switch on and pump water out of the tank.

![image](https://github.com/HighTideTechnologies/htt-interview/assets/55821525/91d0b51c-3a21-4bbd-98bd-ef7a6f5d3a19)

###### Pump
The pump will pump water out of the tank to a higher elevation. The pump will turn on when the water level reaches the lead float, and will switch off when the level falls to the off float.


###### Tank
The tank holds water, pump, and float switches for the lift station. For the purposes of this assignment, we'll assume all tanks are cylindrical. There are two relevant volumes to the tank, the total volume and the "lead-to-off volume".

The more relevant volume is what we'll call the "lead-to-off volume." Since the float switches control the pump, turning on when it reaches the lead and off when it reaches the off, this is the volume we'll use for our pump calculations.

## Goal
You goal is to estimate the flow through the lift station after a pump cycle completes. There are three main metrics we want to capture:

-  inflow rate (the estimated rate of liquid flowing into the tank)
-  outflow rate (the rate at which water is pumped out of the tank)
-  total flow (the amount of liquid pumped out of the tank while the pump was on)

## Instructions
There are models and tests in place to get you started. You will be required to implement several methods and write tests to ensure the code is working as intended.

#### Models
The following models and migrations to create their tables have been provided for you. No more tables should be required to complete the assignment.

###### Lift Stations
```
create_table "lift_stations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "radius"                         # the radius of the tank
    t.float "height"                         # the total height of the tank
    t.float "lead_to_floor"                  # the height from the floor of the tank to the fixed height of the lead float
    t.float "off_to_floor"                   # the height from the floor of the tank to the fixed height of the off float
    t.integer "pump_id"                      # the associated pump
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"                          # the name of the lift station
end
```

###### Pumps
```
create_table "pumps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
end
```

###### Pump States
Pump states represent telemetry data sent from the lift station to our server.
```
create_table "pump_states", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "active", null: false         # true indicates the pump is on, false off
    t.datetime "reported_at", null: false   # the time the data was reported, not necessarily the time the row was created
    t.bigint "pump_id", null: false         # the associated pump
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
end
```

## Getting Started
