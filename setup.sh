#!/usr/bin/env bash
BOILERPLATE_FILE_NAME=boilerplate.zip
GITHUB_USERNAME=carlosonunez # change this if forking
fetch_latest_boilerplate() {
  curl -o "$BOILERPLATE_FILE_NAME" \
    https://github.com/$GITHUB_USERNAME/new_python_project/archive/latest.zip
}

unzip_to_current_directory() {
  unzip "$BOILERPLATE_FILE_NAME" -d ..
}

delete_boilerplate_zip() {
  rm "$BOILERPLATE_FILE_NAME"
}

fetch_latest_boilerplate &&
  unzip_to_current_directory &&
  delete_boilerplate_zip
