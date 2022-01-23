#! /bin/bash

pushd "$(dirname "$0")" >/dev/null

cat ./vscode-extensions | xargs -L 1 code-insiders --install-extension

popd
