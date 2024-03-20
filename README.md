
<img width="400" alt="Color=Full" src="https://github.com/HighTideTechnologies/htt-interview/assets/55821525/1785501d-da4a-4b3a-a164-2af33f6ab360">

# High Tide Technologies Code Assessment

Welcome to the High Tide Technologies Code Assesment! The goal of this assessment is to evaluate a candidate's ability to gather context, ask questions, and implement a solution to an unfamiliar problem.

Your goal will be to implement a service that will estimate the flow of water into/out of a wasterwater lift station.

### Table of Contents
- [Concepts](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#concepts)
    - [What is a Lift Station?](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#what-is-a-lift-station)
    - [Components](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#components)
        - [Float Switches](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#float-switches)
        - [Pump](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#pump)
        - [Tank](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#tank)
- [Goal](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#instructions)
- [Instructions](https://github.com/HighTideTechnologies/htt-interview/edit/main/README.md#instructions)

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
do it.
