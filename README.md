<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

# Laravel Base

## Dev

### Primeira execução

```
docker-compose -f docker-compose.develop.yml up -d
docker exec -i laravel-base-db mysql -uroot -plaravel-base laravel-base < ~/Desktop/backup-laravel-base.sql
docker exec -it laravel-base-app composer install
```

## Outras execuções

```docker-compose -f docker-compose.develop.yml up -d```

Endereço: [http://localhost](http://localhost)


## Production

### Primeira execução

 ```
sh ./init-letsencrypt.sh
docker-compose -f docker-compose.production.yml up -d
```

## Outras execuções

```docker-compose -f docker-compose.production.yml up -d```
