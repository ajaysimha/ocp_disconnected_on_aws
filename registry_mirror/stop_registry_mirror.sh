#!/bin/bash

echo "############################################"
echo "# Stopping Registry Mirror"
echo "#"

podman pod rm -f registry_mirror | true

podman pod ps

echo "############################################"
