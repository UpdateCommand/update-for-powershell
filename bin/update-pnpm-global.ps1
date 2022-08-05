# PNPM: Performant Node Package Manager
if (Get-Command "pnpm" -errorAction SilentlyContinue)
{
    pnpm update --global
}