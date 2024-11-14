# lean-coffee

## Create a network
```$ podman network create leancoffee```

## Check it exists
```
$ podman network ls | grep leancoffee
NETWORK ID    NAME        DRIVER
db243fb63074  leancoffee  bridge
```

## Login:
```$ podman login registry.redhat.io```

## Create psql volume
```$ podman volume create postgresql --ignore```

## Create & run postgres db
```$ podman run -itd --network leancoffee --env=POSTGRESQL_PASSWORD=passw0rd --env=POSTGRESQL_USER=postgres --env=POSTGRESQL_DATABASE=leancoffee -v postgresql:/var/lib/postgresql/data:Z --name postgresql registry.redhat.io/rhel9/postgresql-16:1-14```

## Check:
```
$ podman container list
CONTAINER ID  IMAGE                                        COMMAND         CREATED         STATUS         PORTS       NAMES
7eb6646f7021  registry.redhat.io/rhel9/postgresql-16:1-14  run-postgresql  7 seconds ago  Up 7 seconds  5432/tcp    postgresql
```    

## Import the data
```$ podman exec -i -u postgres postgresql psql < leancoffee.sql```

### Check:
```    
$ podman exec -ti -u postgres postgresql psql
    psql (16.1)
    Type "help" for help.
    
postgres=# \d+
 Schema |         Name          |   Type   |  Owner   | Persistence | Access method |    Size    | Description 
--------+-----------------------+----------+----------+-------------+---------------+------------+-------------
 public | sliders_runs          | table    | postgres | permanent   | heap          | 16 kB      | 
 public | sliders_runs_id_seq   | sequence | postgres | permanent   |               | 8192 bytes | 
 public | sliders_topics        | table    | postgres | permanent   | heap          | 16 kB      | 
 public | sliders_topics_id_seq | sequence | postgres | permanent   |               | 8192 bytes | 
(4 rows)

postgres=# exit
```

## Build the app
```
$ podman build -t leancoffee:latest . 
```
(Note: don't forget the . at the end of the above command!)
## Output
```
STEP 1/5: FROM registry.access.redhat.com/ubi9/php-81:latest
STEP 2/5: MAINTAINER Chris Jenkins "chrisj@redhat.com"
--> Using cache aada37655cec7a66ff3745bea051aebb3c6dbdf40b1b810335dc3b2f4eadfd0e
--> aada37655cec
STEP 3/5: EXPOSE 8080
--> Using cache c6d215e24d2958f1b50f41693432787afa42468a70d12448ab80ab25f25a7bd5
--> c6d215e24d29
STEP 4/5: COPY . /opt/app-root/src
--> dcb59dc42603
STEP 5/5: CMD /bin/bash -c 'php -S 0.0.0.0:8080'
COMMIT leancoffee:latest
--> bdcd3174446e
Successfully tagged localhost/leancoffee:latest
bdcd3174446e61fbcf17a48b261ec9505b82b7382be1878939a998c2d2f6ef06
```

## Check it built ok
```
$ podman image list | grep leancoffee
localhost/leancoffee                          latest      bdcd3174446e  21 seconds ago  928 MB
```

## Run the app
```
$ podman run -p 8080:8080 --network leancoffee --env=POSTGRESQL_PASSWORD=passw0rd --env=POSTGRESQL_USER=postgres --env=POSTGRESQL_DATABASE=postgres --env=POSTGRESQL_HOST=postgresql localhost/leancoffee

[Thu Nov 14 14:35:48 2024] PHP 8.1.27 Development Server (http://0.0.0.0:8080) started
```

You can then open a browser and navigate to [http://localhost:8080](http://localhost:8080) to open the application.



