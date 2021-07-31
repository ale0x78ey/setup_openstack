#!/bin/bash

ansible-galaxy collection install amazon.aws
export ANSIBLE_TRANSFORM_INVALID_GROUP_CHARS='ignore'
