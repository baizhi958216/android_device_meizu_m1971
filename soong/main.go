package m1971

import (
    "android/soong/android"
)

func init() {
    android.RegisterModuleType("meizu_m1971_fod_hal_binary", fodHalBinaryFactory)
    android.RegisterModuleType("meizu_m1971_light_hal_binary", lightHalBinaryFactory)
}
