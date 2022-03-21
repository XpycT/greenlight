migrate_up:
	migrate -path=./migrations -database=$GREENLIGHT_DB_DSN up
