---
title: "Installation"
date: 2021-08-23T12:53:11+02:00
draft: false
---

#### System requirements:
* Debian 10, Debian 11, Ubuntu 20.04 (other Linux distribution might work, too, but are not tested yet)
* Veins 5.1 (which depends on)
    - OMNeT++ 5.6.2
    - SUMO 1.8.0
* [Conan](http://conan.io/index.html) 1.42.1 (A C/C++ package manager required to install [PROJ](https://proj.org/) 8.1.1)

You can find Veins 5.1 and its dependencies already installed in the virtual machines [Instant Veins 5.1-i2](http://veins.car2x.org/documentation/instant-veins/)

#### Guide:
1. Install Veins, OMNeT++, and SUMO in a single directory e.g., ```src``` (already done in Instant Veins 5.1-i2).
2. Download Conan from [http://conan.io/downloads.html](http://conan.io/downloads.html) and install it.
3. Clone the space_Veins source files in the same directory as Veins, OMNeT++, and SUMO are located. (For Instant Veins 5.1-i2 it is ```/home/veins/src```.)
   ```bash
   git clone https://github.com/veins/space_veins.git
   ```
4. Go into the ```space_veins``` directory.

5. Run the following Makefile targets
    ```bash
    make conan_deps
    make makefiles
    make
    ```
6. If all steps are finished successfully space_Veins is ready to use.
