#!/bin/bash

GIT=$(which git)
DOCKER=$(which docker)

${GIT} pull
${DOCKER} build -t cpuminer-opt-jayddee .

