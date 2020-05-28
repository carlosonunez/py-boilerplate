#!/usr/bin/env bash
BOILERPLATE_FILE_NAME=boilerplate.zip
GITHUB_REPO_NAME=py-boilerplate # change this if forking and renaming
GITHUB_USERNAME=carlosonunez # change this if forking
fetch_latest_boilerplate() {
  curl -o "$BOILERPLATE_FILE_NAME" \
    https://github.com/$GITHUB_USERNAME/$GITHUB_REPO_NAME/archive/latest.zip
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
