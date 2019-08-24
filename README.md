# docker-b2

Run Backblaze B2 CLI in a docker container.

## Setup

* Build the container image.

```
docker build [--no-cache] -t b2 .
```

* Create aliases in ~/.bashrc (or your preferred terminal config file)

```
alias b2='docker run --rm -it -v ~/.b2_account_info:/root/.b2_account_info -v `pwd`:/app b2 b2'
alias b2console='docker run --rm -it -v ~/.b2_account_info:/root/.b2_account_info -v `pwd`:/app b2 bash'
```

* Create B2 SQLite credentials file.

```
touch ~/.b2_account_info
chmod 0600 ~/.b2_account_info
b2 authorize-account myApplicationKeyID
```

* Run b2.

```
b2 ls myBucket
b2 upload-file myBucket test test
```
