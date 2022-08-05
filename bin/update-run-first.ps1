#NOT TESTED (yet)
#source: https://stackoverflow.com/a/27851443
Get-ChildItem "$(config_home)/update/update-run-first" | ForEach-Object {
  & $_.FullName
}