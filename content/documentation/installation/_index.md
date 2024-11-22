---
title: "Installation"
date: 2021-08-23T12:53:11+02:00
draft: false
---

This installation guide only works with **space_Veins-0.3**. All other versions of space_Veins are deprecated and are no longer supported.
There are two recommended ways to run space_Veins which either use VS Code Devcontainers (Docker) or Singularity.
### VS Code Devcontainers
#### Requirements/Tested with:
- [Docker] for Windows 4.22.0
- [VS Code] for Windows 1.82.2
- [VS Code extension 'Dev Containers'] 0.309.0
- [Ubuntu 22.04] in WSL2

##### Attention
If you are using a Windows OS, please install the [WSL2].
Then save space_Veins inside a Linux-based OS in the WSL2.
For running the Dev Container, make sure that the [WSL2 backend] is enabled in Docker.

#### Guide:
1. Start Docker

1. Open the space_Veins root directory in VS Code. Install the VS Code extension 'Dev Containers' if it is not already installed.

    {{< image src="devcontainer_extension.png" width="400px" >}}

1. A pop-up in VS Code asks if the current folder should be reopened in a container. Click "Reopen in Container".

    {{< image src="devcontainer_reopen.png" width="400px" >}}

1. VS Code automatically starts creating the Docker container. This takes several minutes to finish.

    {{< image src="devcontainer_build.png" width="400px" >}}

1. As soon as building the container is finished, VS Code indicates the use of the Docker container in its lower left corner.

    {{< image src="devcontainer_finished.png" width="400px" >}}

1. Build space_Veins:
    1. Press Ctrl + Shift + p
    2. Type `Tasks: Run Task`
    3. Hit Enter
    4. Select `build all`

    {{< image src="devcontainer_build-space_Veins.png" width="400px" >}}

1. Run the example
    1. Press Ctrl + Shift + p
    2. Type `Tasks: Run Task`
    3. Hit Enter
    4. Select `run veins_launchd`
    5. Use the terminal to navigate to `examples/space_veins`
    6. Run ```./run```

    {{< image src="devcontainer_terminal.png" width="400px" >}}


[Docker]: https://www.docker.com/get-started/
[Ubuntu 22.04]: https://learn.microsoft.com/de-de/windows/wsl/install-manual#downloading-distributions
[VS Code]: https://code.visualstudio.com/
[VS Code extension 'Dev Containers']: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers
[WSL2]: https://learn.microsoft.com/en-us/windows/wsl/about
[WSL2 backend]: https://docs.docker.com/desktop/features/wsl/

### Singularity
#### Requirements/Tested with:

- [Singularity][SYLABS] 3.11.0
- [Debootstrap][DEBIAN] 1.0.126

[SYLABS]: https://github.com/sylabs/singularity
[DEBIAN]: https://wiki.debian.org/Debootstrap

#### Guide:
1. Build the Singularity container
    ```bash
    cd space_veins/singularity
    singularity build --fakeroot singularity-space_veins.sif singularity-space_veins.def
    ```

2. Build space_Veins
    ```bash
    singularity run -H ..:/space_veins --net --network none singularity-space_veins.sif --chdir /space_veins -- make makefiles
    singularity run -H ..:/space_veins --net --network none singularity-space_veins.sif --chdir /space_veins -- make
    ```

3. Run the example
    ```bash
    singularity run -H ..:/space_veins --net --network none singularity-space_veins.sif --chdir /space_veins/examples/space_veins --launchd -- ./run -u Cmdenv -c Null-Island-Launchd -r 0
    ```

Alternatively the following commands can be used to build space_Veins and run the example:

```bash
./singularity-space_veins.sh /space_veins -- make makefiles
./singularity-space_veins.sh /space_veins -- make
./singularity-space_veins.sh /space_veins/examples/space_veins --launchd -- ./run -u Cmdenv -c Null-Island-Launchd -r 0
```

### Native Installation
Please have a look at the `.devcontainer` folder or the singularity definition file `singularity/singularity-space_Veins.def`. These files contain all necessary information for setting up a native development environment. Please be aware that space_Veins is only tested with Ubuntu 22.04 Jammy so far.
