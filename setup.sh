#!/usr/bin/env bash
BOILERPLATE_ZIP_URL=https://github.com/carlosonunez/py-boilerplate/archive/latest.zip
BOILERPLATE_FILE_NAME=boilerplate.zip
fetch_latest_boilerplate() {
  curl -o "$BOILERPLATE_FILE_NAME" "$BOILERPLATE_ZIP_URL"
}

unzip_to_current_directory() {
  unzip "$BOILERPLATE_FILE_NAME" -d .
}

delete_boilerplate_zip() {
  rm "$BOILERPLATE_FILE_NAME"
}

fetch_latest_boilerplate &&
  unzip_to_current_directory &&
  delete_boilerplate_zip
