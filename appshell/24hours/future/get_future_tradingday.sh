#!/bin/sh

echo `python ${SIM_PLATFORM_HOME}/appshell/get_tradingday.py -conf appshell/get_tradingday_future.json | tail -1`