# Installing HedgeDoc with docker-compose.
![Screenshot_81](https://github.com/6Ministers/hedgedoc-collaborative-markdown-editor-for-business-idease/assets/11208423/167994e5-8225-42cf-a6ea-42fdca9ea3e8)


## Quick Installation

**Before starting the instance, direct the domain (subdomain) to the ip of the server where HedgeDoc will be installed!**

## 1. HedgeDoc Server Requirements
From and more
- 1 CPUs
- 1 RAM 
- 10 Gb 

Run for Ubuntu 22.04

``` bash
sudo apt-get purge needrestart
```

Install docker and docker-compose:

``` bash
curl -s https://raw.githubusercontent.com/6Ministers/hedgedoc-collaborative-markdown-editor-for-business-idease/master/setup.sh | sudo bash -s
```

Download HedgeDoc instance:


``` bash
curl -s https://raw.githubusercontent.com/6Ministers/hedgedoc-collaborative-markdown-editor-for-business-idease/master/download.sh | sudo bash -s hedgedoc
```

If `curl` is not found, install it:

``` bash
$ sudo apt-get install curl
# or
$ sudo yum install curl
```

Go to the catalog

``` bash
cd hedgedoc
```

In the configuration file `.env`, set the following parameters:

Install what you need, documentation:

https://docs.hedgedoc.org/configuration/


``` bash
DB_PASSWORD=f6fh76bf2-7348-465bc-435gfd-358cea4a09a3
DOMAIN=hedgedoc.your-domain.com
CMD_EMAIL=true
CMD_ALLOW_EMAIL_REGISTER=true
CMD_PROTOCOL_USESSL=true
CMD_HSTS_ENABLE=true
CMD_CSP_ENABLE=true
```

To change the domain in the `Caddyfile` to your own

``` bash
https://subdomain.your-domain.com:443 {
    header Strict-Transport-Security max-age=31536000;
    reverse_proxy 127.0.0.1:3000
    tls admin@example.org
	encode zstd gzip
}
```

**Run HedgeDoc:**

``` bash
docker-compose up -d
```

Then open `https://hedgedoc.domain.com:` to access HedgeDoc

![Screenshot_80](https://github.com/6Ministers/hedgedoc-collaborative-markdown-editor-for-business-idease/assets/11208423/ed4695cb-0e25-46e5-9329-1f45e3436495)



## HedgeDoc container management

**Run HedgeDoc**:

``` bash
docker-compose up -d
```

**Restart**:

``` bash
docker-compose restart
```

**Restart**:

``` bash
sudo docker-compose down && sudo docker-compose up -d
```

**Stop**:

``` bash
docker-compose down
```

## Documentation

https://docs.hedgedoc.org/

https://docs.hedgedoc.dev/
