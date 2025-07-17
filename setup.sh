#!/bin/bash

# Install Laravel via Composer jika belum ada
if [ ! -d "vendor" ]; then
  composer create-project --prefer-dist laravel/laravel laravel-app
  cd laravel-app
else
  cd laravel-app
fi

# Jalankan migrasi awal (opsional)
php artisan migrate
