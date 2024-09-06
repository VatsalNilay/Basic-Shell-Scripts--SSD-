#!/bin/bash

du -sh -- */ | sort -h | awk '{sub(/\/$/, "", $2); printf("%-20s\t%s\n", $2, $1)}'