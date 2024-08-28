#!/bin/bash

/usr/local/share/dotnet/x64/dotnet tool restore
/usr/local/share/dotnet/x64/dotnet paket restore
exit_code=$?
if [ $exit_code -ne 0 ]; then
  exit $exit_code
fi
/usr/local/share/dotnet/x64/dotnet fake run build.fsx --target $@
