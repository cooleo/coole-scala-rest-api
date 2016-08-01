#!/bin/bash

cd $HOME/sample-deps

sbt ++2.11.8 test:compile

cd /