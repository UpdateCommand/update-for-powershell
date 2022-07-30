# Chocolatey package manager for Windows
if (Get-Command "choco" -errorAction SilentlyContinue)
{
   choco upgrade all
}
