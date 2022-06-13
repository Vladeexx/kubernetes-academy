#!/bin/bash

kubectl logs -n task2 -l cjob >> logs.yaml
