#!/bin/sh
echo "starting stock_order_makemarket.sh..."
python ${SIM_PLATFORM_HOME}/extrader/order_policy_makemarket.py -conf ${SIM_PLATFORM_HOME}/extrader/order_policy_makemarket_future.json