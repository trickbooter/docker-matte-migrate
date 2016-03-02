### Creates a Matte Migrate container to run db migrations

See https://github.com/mattes/migrate

To use this container

docker run -v /path/containing/your/migrations:/migrations quay.io/rilx/matte-migrate migrate -url cassandra://host:port/keyspace -path /migrations up

 
