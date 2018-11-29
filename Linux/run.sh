#!/bin/bash

 D=$(mktemp -d)
 pushd $D > /dev/null
 wget "https://raw.githubusercontent.com/ftorto/LaZagne/oneline/Linux/laz.tgz" > /dev/null
 tar xzf laz.tgz > /dev/null
 pip install --user -r requirement.txt > /dev/null
 python laZagne.py all
 popd > /dev/null
 rm -rf $D > /dev/null