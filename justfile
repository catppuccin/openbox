_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers templates/openbox.tera
  whiskers --list-flavors -o plain | while read -r flavor; do
    cp templates/*.xbm themes/catppuccin-$flavor/openbox-3/
  done
