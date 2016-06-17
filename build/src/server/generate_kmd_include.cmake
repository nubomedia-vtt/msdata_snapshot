  execute_process (COMMAND /usr/bin/kurento-module-creator -r /home/tteyli/nubo_v6.5/msdata_snapshot/src/server/interface -dr /usr/share/kurento/modules -o /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/server/)

  file (READ /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/server/msdata.kmd.json KMD_DATA)

  string (REGEX REPLACE "\n *" "" KMD_DATA ${KMD_DATA})
  string (REPLACE "\"" "\\\"" KMD_DATA ${KMD_DATA})
  string (REPLACE "\\n" "\\\\n" KMD_DATA ${KMD_DATA})
  set (KMD_DATA "\"${KMD_DATA}\"")

  file (WRITE /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/server/msdata.kmd.json ${KMD_DATA})
