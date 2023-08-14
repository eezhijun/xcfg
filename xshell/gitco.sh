#!/bin/bash

FILE_DIR=$(cd $(dirname -- $0); pwd)
CUT_DIR=$(pwd)
# ROOT_DIR=${FILE_DIR}/prj/beetle_open_core
# CUS_DIR=${FILE_DIR}/prj/beetle_open_core/src/customer
# PHY_DIR=${FILE_DIR}/prj/beetle_open_core/src/bt/phy
# BT_DIR=${FILE_DIR}/prj/beetle_open_core/src/bt/stack

ROOT_DIR=${FILE_DIR}
CUS_DIR=${FILE_DIR}/src/customer
PHY_DIR=${FILE_DIR}/src/bt/phy
BT_DIR=${FILE_DIR}/src/bt/stack

echo "Please choose next step"
echo "1. git checkout branch 2.git pull"
read VAR

if [ ${VAR} == "1" ]; then
    echo "cd ${ROOT_DIR} && git branch -vv"
    cd ${ROOT_DIR} && git branch -vv

    echo "Please enter branch to switch:"
    read BRANCH_V

    if [ ${BRANCH_V} == "no" ]; then
        echo "END"
    else
        echo "cd ${ROOT_DIR} && git checkout ${BRANCH_V}"
        echo "cd ${CUS_DIR} && git checkout ${BRANCH_V}"
        echo "cd ${PHY_DIR} && git checkout ${BRANCH_V}"
        echo "cd ${BT_DIR} && git checkout ${BRANCH_V}"
        cd ${ROOT_DIR} && git checkout ${BRANCH_V}
        cd ${CUS_DIR} && git checkout ${BRANCH_V}
        cd ${PHY_DIR} && git checkout ${BRANCH_V}
        cd ${BT_DIR} && git checkout ${BRANCH_V}
    fi
elif [ ${VAR} == "2" ]; then
    echo "cd ${ROOT_DIR} && git pull"
    echo "cd ${CUS_DIR} && git pull"
    echo "cd ${PHY_DIR} && git pull"
    echo "cd ${BT_DIR} && git pull"
    cd ${ROOT_DIR} && git pull
    cd ${CUS_DIR} && git pull
    cd ${PHY_DIR} && git pull
    cd ${BT_DIR} && git pull
else
    echo "Error"
fi
