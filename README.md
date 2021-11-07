# SimCity Classic

SimCity Classic! In a Docker Container!

The game media for this has been sourced from [archive.org](https://archive.org/details/msdos_SimCity_Classic_1994).

## Usage

For detailed usage, consult README.md from upstream
[classiccontainers/dosbox](https://github.com/classic-containers/dosbox) image.

### Linux

```shell
$ docker run \
    -e DISPLAY=unix$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --device /dev/snd \
    classiccontainers/simcity_classic
```

### Docker for Windows

This requires an X11 and Pulse Adudio server; for more information on how to
set those up, consult the README.md in the repository for the upstream image.

```shell
$ docker run \
    -e DISPLAY=host.docker.internal:0 \
    -e PULSE_SERVER=host.docker.internal \
    classiccontainers/simcity_classic
```

## Saving Game Progress

Per the documentation in the upstream image, the A drive inside the dosbox
environment will be mounted to /var/games/dosbox. If you want data to be
available after the container terminates, simply mount a local directory
to /var/games/dosbox in the container.

```shell
$ docker run \
    -v /home/user1/savedata:/var/games/dosbox \
    classiccontainers/simcity_classic
```
## A Note on Gameplay

When the game runs, it will load a (mostly) black-and-white graphics set.
In order to get the graphics you're probably familiar with, once you've
started a city,

- Go to the System menu
- Select "Load Graphics."
- Choose "Classic Graphics"
- Click "Load"

If anyone knows how to make Classic Graphics the default, let me know and
I'll add it to the image.

## Disclaimer

This project is intended for educational purposes only.
