#!/bin/bash

kubectl logs -n task2 -l cjob >> logs.yaml

* * * * * /Users/vladimirpavicic/Documents/Projects/kubernetes-academy/session-2/task/bash_script.sh
