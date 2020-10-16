# BFGMiner / FutureBit Moonlander 2 Dockerfile

* [jstefanop's BFGMiner repo](https://github.com/jstefanop/bfgminer)
* [MLD2 BitcoinTalk thread](https://bitcointalk.org/index.php?topic=2420357.msg24766858#msg24766858)


This also works on a RaspberryPi 3. In fact, thats what it was made for.

## Prerequisites

[Docker](https://docs.docker.com/), ~512MB of disk space, Dockerfile.


## Building the Docker image

Easiest way to get up and running:

```
git clone https://github.com/BloodyNora/Docker
cd Docker/bfgminer-mld2-jstefanop
./build.sh
<edit and/or rename conf/example.conf to suit your needs>
./run.sh example
```

## Re-running the Docker container

```
docker ps -a
<Copy down the name of your bfgminer-container, e.g. mld2-emc2>
docker start mld2-emc2
```

## Further notes

If you happen to run both the Moonlanders and any USB-UART-adapters on your miner host and use the `-S ALL` device flag, `bfgminer` will display additional, seemingly broken miners, one per UART adapter. Generally, anything that shows up as `/dev/ttyUSBX` will be considered as a miner. You can choose to disable these using `m` to open the device manager, then `arrow up/down` or `page up/down` to naviage and then `d` to disable. However, the proper way would be to introduce `-S MLD:/dev/ttyUSBX` flags per wanted device in the `MOONLANDER_DEVICES` variable in your config file.

## Donate

It's easy! Just **don't** change the `conf/example.conf` file and run the miner like so: `./run.sh example` - this will make it run at my benefit. Thank you!
