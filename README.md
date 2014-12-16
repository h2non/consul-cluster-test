# Hydra high-level acceptance tests suite

> This is still a work in progress

## Requirements

- **Python** >= 2.7.x
- **Docker** >= 1.0 (see [boot2docker](http://boot2docker.io/) for OSX)
- **Blockade**

## Setup

Install Python dependencies
```bash
$ sudo pip install -r requirements.txt
```

Install blockade
```bash
$ sudo blockade up
```

## Testing

Run acceptance tests
```bash
$ make test
```

## Docker usage

### Build a new image

```bash
$ sudo docker build -t innotech/hydra-acceptance-base:<version> .
```

### Release new version

```bash
$ sudo docker push innotech/hydra-acceptance-base:<version>
```

## License

MIT - Innotech (c) Copyright
