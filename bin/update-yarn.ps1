# Yarn JavaScript package manager
#
# Upgrade packages to their latest version based on the specified range
# in the file 'yarn.lock', or latest version if no range is specified.
#
if (Get-Command "yarn" -errorAction SilentlyContinue)
{
    yarn upgrade
}
