#!/bin/sh

ipfs files stat /mirror || ipfs files mkdir /mirror

ipfs files mkdir /mirror/$1
ipfs key gen $1
