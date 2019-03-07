#!/bin/bash

_PREFIX=$(pwd)

_INPUT_COMMAN=$@

_LOAD_PATH="/home/liupai/hme-workspace/workspace/HME-best/scripts/setupdev.sh"

_RUN_PATH="/home/liupai/hme-workspace/workspace/HME-best/scripts/runenv.sh"

_ROOT="sudo"

_LOAD="load"

_RELOAD="reload"

echo ${_INPUT_COMMAN}
Init()
{
    ${_ROOT} ${_LOAD_PATH} ${_RELOAD}
	${_ROOT} ${_LOAD_PATH} ${_LOAD}
}

Start()
{
    numactl --cpunodebind=0 --membind=0 ${_RUN_PATH} ${_INPUT_COMMAN}
}

Init
Start
