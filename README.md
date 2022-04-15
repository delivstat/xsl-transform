# XSL Transform

This project was created due to the unavailability of the hosted site:
http://xsltransform.net/

## Quick Start
If you don't feel like reading all of the documentation, you can get the application up and running quickly by doing the following:

* Clone this repo
* Navigate to the root directory containing the `docker-compose.yml`
* Run the following command:
```
docker-compose up
```

### Prerequisites

In order to use the software in this repository you will require:

```
Docker
Docker Compose(optional)
```

### Installing

The docker image has been pre-built and pushed to docker hub, it can be aquired using:

```
docker pull franvdm/xsl-transform
```

This will pull the image containing the xsl-transform software, for this stan-alone setup you would require a mysql database that has been previously installed.

Included in this repository is the `application.conf` which can be edited to include your mysql connection.

There is also an `init.sql` script that should be executed to create the schema for the application.

```
mysql -u {{username}} -p{{password}} < init.sql
```
The init script will create the `xsltransform` schema and grants to a default user called `user`. Changing the user grants in `init.sql` will require you to also update the `application.conf` with the same user credentials

## Deployment (Docker)

In order to run the stand-alone docker image you can use:
```
docker run -p 9000:9000 -ti franvdm/xsl-transform
```

Once the following messages appear on your terminal, it will be an indication of a successful startup:

```
--- (Running the application from SBT, auto-reloading is enabled) ---

[info] play - Listening for HTTP on /0.0.0.0:9000

(Server started, use Ctrl+D to stop and go back to the console...)
```

## Deployment (Docker Compose)
There is a docker-compose script also included in this repository that includes the mysql service as a convenience for those who do not have a previously installed mysql instance.

Once this repository has been cloned, navigate to the directory contaning the `docker-compose.yml` and execute the following commands:

```
docker-compose up -d
```

This will run the `franvdm/xsl-transform` as well as `mysql:5.7` services.

You can edit the `docker-compose.yml` if you need to change the mysql ports, credentials or volume mounts.

## Acknowledgments

* Tip of the hat to [joepjoosten](https://github.com/joepjoosten) for creating the awesome xsl-transform software that can be found running on http://xsltransform.net/ (sometimes), the source code can also be found on his github page.
* Also thanks to [hikmat30ce](https://hub.docker.com/r/hikmat30ce/xslt-tester/) for creating an original docker image that was used as a reference when creating this. 
