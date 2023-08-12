#!/bin/sh

# Executables
ftp2mfs=/root/.cargo/bin/ftp2mfs
ipfs=/usr/local/bin/ipfs

# User input
configfile=./$1.toml
ipfskey=$1

# Script
workdir=$(basename $0)
cd $workdir

$ftp2mfs --config $configfile
$ipfs name publish -k $ipfskey $($ipfs files stat --hash /mirror/$1/data)
