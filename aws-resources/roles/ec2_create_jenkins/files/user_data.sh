#!/bin/bash
set -e -x

usermod -aG docker bitnami
usermod -aG docker tomcat
usermod -aG docker ubuntu
