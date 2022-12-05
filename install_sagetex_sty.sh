#!/bin/bash

export SAGETEX_VERSION=3.5
TMPDIR=`mktemp -d`
pushd $TMPDIR
wget https://github.com/sagemath/sagetex/archive/refs/tags/v${SAGETEX_VERSION}.zip -O sagetex.zip
unzip sagetex.zip
pushd sagetex-${SAGETEX_VERSION}
latex sagetex.ins
popd
popd
cp $TMPDIR/sagetex-${SAGETEX_VERSION}/sagetex.sty .