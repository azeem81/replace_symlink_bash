#!/bin/bash
args=("$@")
if [ -L  $4 ]; then
    rm ${args[3]}
    cp -P ${args[0]} ${args[3]}
else
    ln -s ${args[1]} ${args[3]}
fi
rm ${args[0]}
ln -s ${args[1]} ${args[0]}
