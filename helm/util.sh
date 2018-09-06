#!/usr/bin/env bash

if [[ "$1" = "init" ]]; then

	helm init \
	    --override 'spec.template.spec.containers[0].command'='{/tiller,--storage=secret}' \
	    --service-account tiller

elif [[ "$1" = "setup-rbac" ]]; then

    kubectl apply -f rbac-config.yaml

fi
