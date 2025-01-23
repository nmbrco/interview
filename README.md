<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Prerequisites

### Docker

This application includes a Dockerfile and docker-compose.yml file.

You will need to install docker either via CLI or using Docker Desktop

https://docs.docker.com/get-started/get-docker/

Docker alternatives:
https://orbstack.dev/


## Setup

### Docker Container

Begin by building the docker images, you can do this via `docker compose`:

```bash
docker compose build
```

Then start the docker containers:

```bash
docker compose up
```

Once the containers have successfuly started, you can access the container using `docker compose exec`:

```bash
docker compose exec interview bash
```

### Laravel

We will need to install our composer dependencies inside the container:

```bash
composer install
```

Then, copy the example environment file to create your own local copy:

```bash
cp .env.example .env
```

Next, generate a new key to use for encryption:

```bash
php artisan key:generate
```

Finally, run the database migrations:

```bash
php artisan migrate
```

### Accessing the app

At this stage you should be able to access the Laravel application at `localhost:9090`

## Testing

While working inside the container with `docker compose exec` we can run our Laravel tests:

```bash
php artisan test
```

## Troubleshooting

> Warning: require(/var/www/public/../vendor/autoload.php): Failed to open stream: No such file or directory in /var/www/public/index.php on line 13

Refer to the Laravel heading above, ensure you have run the `composer install` command inside the container

> 500 | SERVER ERROR

Refer to the Laravel heading above, ensure you have a `.env` file setup

> No application encryption key has been specified.

Refer to the Laravel heading above, ensure you have generated a new `key`


