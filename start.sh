#!/bin/bash
export HUGO_MODULE_REPLACEMENTS=""
pushd ../vyberd/
	ls
	for dir in *; do
		export HUGO_MODULE_REPLACEMENTS="${HUGO_MODULE_REPLACEMENTS},github.com/vyberd/${dir}->../../vyberd/${dir}"
	done
popd
export HUGO_MODULE_REPLACEMENTS="${HUGO_MODULE_REPLACEMENTS:1}"

export HUGO_MODULE_REPLACEMENTS="${HUGO_MODULE_REPLACEMENTS},github.com/gergovari/deathrattle->../../deathrattle"

hugo server --appendPort=false --baseUrl="localhost"
