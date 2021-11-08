#!/bin/bash

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

./gnmic-rc1 generate path --file srl-latest-yang-models/srl_nokia/models --dir srl-latest-yang-models/ietf
./gnmic-rc1 generate path --file srl-latest-yang-models/srl_nokia/models --dir srl-latest-yang-models/ietf --config-only
./gnmic-rc1 generate path --file srl-latest-yang-models/srl_nokia/models --dir srl-latest-yang-models/ietf --with-prefix
./gnmic-rc1 generate path --file srl-latest-yang-models/srl_nokia/models --dir srl-latest-yang-models/ietf --types
./gnmic-rc1 generate path --file srl-latest-yang-models/srl_nokia/models --dir srl-latest-yang-models/ietf --json