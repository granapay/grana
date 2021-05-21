#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.granacore/granad.pid file instead
export LC_ALL=C

grana_pid=$(<~/.granacore/testnet3/granad.pid)
sudo gdb -batch -ex "source debug.gdb" granad ${grana_pid}
