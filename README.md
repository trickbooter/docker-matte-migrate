### Creates a Matte Migrate container to run db migrations

See the [Matte Migrate Project](https://github.com/mattes/migrate)

Tags will not be used. Please check the Dockerfile definition.

To use this container...

1. Learn how to build scripts from the mattes link above. 
2. Learn how to run migrations with the driver and arguments of your choice
3. Run Docker and map the migrations scripts into the container for an easy to run containerised migration

```
docker run -v /path/containing/your/migrations:/migrations trickbooter/matte-migrate migrate -url driver://dburl -path /migrations up

# example, _up_ the scripts in /home/paul/myproject/migrations 
# to a Cassandra DB running on 192.168.99.100 called myproject
# myproject keyspace must exist before running

docker run -v /home/paul/myproject/migrations:/migrations trickbooter/matte-migrate migrate -url cassandra://192.168.99.100:9042/myproject -path /migrations up
```
 
