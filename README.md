# Disrupted Communication in Mobile IoT Scenarios: A Simulation-based Performance Evaluation Use Case

This repository contains the simulation files developed for my diploma thesis titled:

"Disrupted Communication in Mobile IoT Scenarios: A Simulation-based Performance Evaluation Use Case".

The main goal of this work is to evaluate communication performance under disrupted / intermittent connectivity conditions in mobile IoT environments.

This is achieved by running multiple simulation scenarios in order to investigate how different network parameters affect overall performance under such communication constraints.

---

## Simulation Environment

This project was developed and tested using OMNeT++ 6.1 and INET Framework 4.5.4.

---

## Repository Contents

This repository includes only the files required to run the simulation experiments:
- omnetpp.ini
- 5 .ned files (network topology definitions)
- scenarioManager.xml
- car*.txt files (vehicle trajectories / mobility traces)
- (backround picture for the network topology)


---

## Studied Parameters / Scenario Variations

Multiple simulation scenarios are executed in order to evaluate performance under disrupted/intermittent communication conditions. The studied parameters include:

1) Routing protocol selection:
- AODV
- DSDV
- GPSR

2) Number of intermediate nodes 

3) Speed of intermediate nodes and Mobility Models

4) Scenario-based communication control using scenarioManager.xml (ScenarioManager).

---

## How to Run the Simulation (IMPORTANT)

To run this simulation project you must have installed OMNeT++ and INET Framework 4.5.4.


Recommended setup (no package modifications needed):

1. Locate your INET installation folder.
2. Go to: inet/tutorials/wireless/
3. Create a new folder named: Thesis
4. Import / place all files expect for the xanthi.png of this repository inside: inet4.5/tutorials/wireless/Thesis/
5. Import xanthi.png inside: inet4.5/images/backround/xanthi.png

Alternative setup (if you place the project in a different folder inside INET):
- Place ALL project files together in the same directory.
- Update the package name at the beginning of each .ned file so it matches the new folder structure.
This is required so OMNeT++ can resolve the NED modules correctly.

Important notes to avoid issues:
- Keep all project files in the same folder (omnetpp.ini, all .ned files, scenarioManager.xml, and all car*.txt files).
- Make sure there are no other omnetpp.ini files in the same folder, so you do not run the wrong configuration by mistake.

Running a specific configuration/scenario:
1. Right click on omnetpp.ini
2. Select: Run As → Run Configurations...
3. Choose the configuration/scenario you want to execute and run it

---

## Performance Metrics

The experiments focus on extracting and evaluating the following performance metrics:
- Throughput
- End-to-End Delay
- Packet Loss / Network Losses
- Routing Overhead
- Energy Consumption

---

## Project Structure

Expected project structure (single folder):
- Thesis/
  - omnetpp.ini (simulation configurations)
  - *.ned (5 network topology files)
  - scenarioManager.xml
  - car*.txt (12 vehicle trajectories files)
  - xanthi.png (backround picture for network topology)
  

---

## Keywords

IoT, Disrupted Communication, Intermittent Connectivity, DTN, MANET, OMNeT++, INET, AODV, DSDV, GPSR, ScenarioManager, Mobility Traces, Simulation, Performance Evaluation
