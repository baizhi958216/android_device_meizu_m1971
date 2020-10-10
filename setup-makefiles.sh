#!/bin/bash
#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=m1971
export DEVICE_COMMON=sm8150-common
export VENDOR=meizu

export DEVICE_BRINGUP_YEAR=2019

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
