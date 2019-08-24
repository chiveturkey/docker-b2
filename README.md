# docker-b2

Run Backblaze B2 CLI in a docker container.

## Setup

* Build the container image.

```
docker build [--no-cache] -t b2 .
```

* Create aliases in ~/.bashrc (or your preferred terminal config file)

```
alias b2='docker run --rm -it b2 b2 '
alias b2console='docker run --rm -it b2 bash'
```

* Get API key.



* Export API key environment variable.



* Run b2.

```
b2 ls myBucket
```
