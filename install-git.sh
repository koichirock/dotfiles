#! /bin/bash

pushd $(dirname $0) > /dev/null

mv .gitconfig .gitignore_global ~/

popd > /dev/null
