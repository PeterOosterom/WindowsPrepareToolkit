#Changes the power settings to turn off monitor/device after 5 hours
powercfg -change -monitor-timeout-dc 300
powercfg -change -monitor-timeout-ac 0
powercfg -change -standby-timeout-dc 300
powercfg -change -standby-timeout-ac 0
