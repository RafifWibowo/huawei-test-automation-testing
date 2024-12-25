#!/bin/bash

# Fungsi untuk menghapus file yang lebih tua dari 30 hari
clean_data() {
    find ./cron -type f -mmin +2 -delete
}

# Jalankan fungsi pembersihan data
clean_data