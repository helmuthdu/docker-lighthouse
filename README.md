# lighthouse/chromium/alpine/docker image

**Run Google's Lighthouse headless in the background**

This image allows you to quickly run [lighthouse](https://github.com/GoogleChrome/lighthouse) in a headless container. That's useful if you want to run it from a CI server, or in the background of your workstation.

## Installation

### From Github

Github URL: <https://github.com/helmuthdu/docker-lighthouse>

```shell
    git clone git@github.com:helmuthdu/docker-lighthouse.git
    docker build --pull --rm -t lighthouse:latest
```

## Usage

### docker-cli

```shell
docker run -ti --rm -v $(pwd):/lighthouse lighthouse "https://www.amazon.com"
```

### nodejs

```shell
npm run lighthouse
```
