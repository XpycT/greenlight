<h1 align="center">Welcome to GreenLight 👋</h1>
<p>
</p>

> [Let's Go Further](https://lets-go-further.alexedwards.net/) book code

## Install

```sh
# Install the migrate CLI tool.
curl -L https://github.com/golang-migrate/migrate/releases/download/v4.15.1/migrate.linux-amd64.tar.gz | tar xvz
mv migrate.linux-amd64 /usr/local/bin/migrate

# Copy and fill .env file
cp .env.example .env

# Run migrations
make db/migrations/up

# Validate and install vendor libraries
make vendor
make audit
```

## Usage

```sh
make run/api
```

## Build

```sh
make build/api
```
