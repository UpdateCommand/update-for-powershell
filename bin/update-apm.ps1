# APM: Atom Package Manager
if (Get-Command "apm" -errorAction SilentlyContinue)
{
    apm upgrade --no-confirm
}