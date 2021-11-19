---
title: "Running the example"
date: 2021-11-19T15:43:11+01:00
draft: false
---

#### Preparation
The satellites' mobility is modeled by the SGP4Mobility module.
As its name suggests the model is based on the SGP4 model which relys on TLE data.
Due to the unknown licensing of TLE data space_Veins does not include the required TLE data.
Up to date TLE data can be download at e.g., [https://www.celestrak.com/NORAD/elements/](https://www.celestrak.com/NORAD/elements/).
The [Wayback Machine](https://web.archive.org/) might be helpful to find older TLE data sets.
Additionally, [Skyfield](https://rhodesmill.org/skyfield/earth-satellites.html) might be helpful to detect satellites which fly over Erlangen based on the TLE data used.

The desired TLE set of a single satellite has to be copied in the lines 61-63 of ```examples/space_veins/omnetpp.ini```.
Further, you have to set the corresponding wall clock time in the SGP4Mobility module, see the parameter ```wall_clock_sim_start_time_utc``` in ```src/space_veins/modules/mobility/SGP4Mobility.ned```.

Currently, the example consists of a single satellite and a single vehicle which exchange ping messages.

#### Running the example
For running the example the Makefile in the root directory of space_Veins provides three targets:
1. ```make run_example```\
This target starts the example scenarion in the **release** mode and in the commandline environment.
2. ```make run_dbg_example_cmd```\
This target starts the example scenarion in the **debug** mode and in the commandline environment.
3. ```make run_dbg_example_gui```\
This target starts the example scenarion in the **debug** mode and in the OMNeT++ GUI environment.
