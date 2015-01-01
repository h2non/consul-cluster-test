# Consul Cluster Test Suite

A proof-of-concept which aims to recreate a distributed cluster system of [Consul](http://www.consul.io/) servers in order to test multiple failure points, service isolation and network errors reproducing various complex scenarios to test the system reilabiity and non-blocking cluster fault tolerance.

It use a [Docker](https://docker.io) [container](https://registry.hub.docker.com/u/innotech/consul/) and [Blockade](http://blockade.readthedocs.org/en/latest/), which is a Python utility to easily infer multiple network latencies and failures between Docker containers using [tc](http://en.wikipedia.org/wiki/Tc_%28Linux%29) and [iptables](http://en.wikipedia.org/wiki/Iptables) from the Docker host

## Requirements

- **Python** 2.7+ with [pip](https://pypi.python.org/pypi/pip) package manager
- **VirtualBox** 4.0+
- **Vagrant** 1.6+

<!--
- **Docker** 1.0+ (see [boot2docker](http://boot2docker.io/) for OSX)
-->

## Setup

Clone this repository
```bash
git clone https://github.com/innotech/consul-cluster-test && cd consul-cluster-test
```

Install Python dependencies using `pip`
```bash
$ sudo pip install -r requirements.txt
```

Start the VM (this may take a while the first time)
```bash
vagrant up
```

Enter the VM
```bash
vagrant ssh
```

Go the vagrant shared directory
```bash
cd /vagrant
```

Install Python dependencies
```bash
pip install -r requirements.txt
```

Run Consul cluster using [Blockade](https://github.com/dcm-oss/blockade/blob/master/docs/guide.rst)
```bash
sudo blockade up
```

Use the help flag to see all the available commands
```bash
$ blockade --help
usage: blockade [-h] [--config blockade.yaml]
                {up,destroy,status,logs,flaky,slow,fast,partition,join} ...

Blockade

optional arguments:
  -h, --help            show this help message and exit
  --config blockade.yaml, -c blockade.yaml
                        Config YAML. Looks in CWD if not specified.

commands:
  {up,destroy,status,logs,flaky,slow,fast,partition,join}
```

## Testing

Run acceptance tests (still a work in progress)
```bash
$ make test
```

## Docker usage

### Build a new image

```bash
$ sudo docker build -t innotech/consul:<version> .
```

### Release new version

```bash
$ sudo docker push innotech/consul:<version>
```

See `Makefile` for additional command shortcuts

## License

MIT - Innotech (c) Copyright
