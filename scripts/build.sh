#!/usr/bin/env bash
set -e
set -o pipefail

build(){
	build_dir=$1
	echo "Building ${build_dir}"
	docker build --rm --force-rm "$build_dir" || return 1
	echo "Successfully built ${build_dir}"
}

IFS=$'\n'
files=( $(find . -iname '*Dockerfile' | sed 's|./||' | sort) )
unset IFS

for f in "${files[@]}"; do
  build "$(dirname "$f")"
done

