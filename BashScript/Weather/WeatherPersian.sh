#!/bin/bash

app_name="Weather"
app_version="1.1"
release_year=2018
author="computer-geek64"

show_help() {
    echo "$app_name v$app_version"
    echo "© $release_year $author - All rights reserved."
    echo
    echo "Usage: weather [options]"
    echo "Options:"
    echo "  -h, --help              نمایش راهنما"
    echo "  -l [مکان], --location [مکان]  نمایش وضعیت آب‌وهوا برای مکان مشخص‌شده"
}

fetch_weather() {
    local location=${1:-""}
    curl -s "https://wttr.in/$location"
}

case "$1" in
    -h|--help)
        show_help
        ;;
    -l|--location)
        if [ -n "$2" ]; then
            fetch_weather "$2"
        else
            echo "لطفاً یک مکان مشخص کنید."
        fi
        ;;
    *)
        fetch_weather
        ;;
esac
