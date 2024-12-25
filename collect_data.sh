#!/bin/bash

# Fungsi untuk mengumpulkan data (sesuaikan dengan sumber data Anda)
collect_data() {
    # Contoh: Mengunduh halaman web dan menyimpannya sebagai CSV
    wget -O "./cron/cron_$(date +%Y%m%d_%H%M).csv" "https://drive.google.com/uc?id=1zO8ekHWx9U7mrbx_0Hoxxu6od7uxJqWw&export=download"
}

# Jalankan fungsi pengumpulan data
collect_data