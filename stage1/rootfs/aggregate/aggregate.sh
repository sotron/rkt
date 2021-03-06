#!/bin/bash -e

# aggregate everything into a single rootfs tree

ROOT=stage1/rootfs

# always start over
[ -e "$ROOT" ] && rm -Rf "$ROOT"
mkdir -p "$ROOT"

# run everything in install.d/*
for i in install.d/*; do
	echo "Sourcing $i"
	source "$i"
done
