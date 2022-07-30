# Scoop package manager for Windows
if (Get-Command "scoop" -errorAction SilentlyContinue)
{
   scoop update
}
