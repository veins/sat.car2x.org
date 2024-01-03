---
title: "Mobility"
draft: false
---

## Terrestrial Mobility
space_Veins supports microscropic traffic models thanks to the integration of [SUMO].
SUMO supports various types of road traffic participants like cars, busses, trains, trucks, cyclists and pedestrians.

## Satellite Mobility
The mobility of satellites is simulated with the help of the [SGP4 model](https://celestrak.com/publications/AIAA/2006-6753/).
This model requires NASA/NORAD [Two-Line Element sets](https://www.celestrak.com/NORAD/elements/) in order to model the orbit of a satellite based on actual measurement data.

## Combining Coordinate Systems
Since the models for satellite and terrestrial mobility differ in all of scale, speed, distance and dimensionality, space_Veins implements the Satellite Observer Position (SOP) centric approach in order to integrate all mobility models in the same Cartesian coordinate system, which is then used to simulate Vehicle-to-Satellite and Vehicle-to-Vehicle communication.
For more details, please read the following publications:

1. Mario Franke and Christoph Sommer, "Toward Space-Air-Ground Integrated Network Simulation with 4D Topologies," Proceedings of 19th IEEE/IFIP Conference on Wireless On demand Network Systems and Services (WONS 2024), Chamonix, France, January 2024.<br>[\[PDF and Details...\]](https://www.cms-labs.org/bib/franke2023toward/)
1. Mario Franke, Florian Klingler and Christoph Sommer, "Poster: Simulating Hybrid LEO Satellite and V2X Networks," Proceedings of 13th IEEE Vehicular Networking Conference (VNC 2021), November 2021.<br>[\[PDF and Details...\]](https://www.cms-labs.org/bib/franke2021simulating/)

[SUMO]: https://sumo.dlr.de/docs/index.html