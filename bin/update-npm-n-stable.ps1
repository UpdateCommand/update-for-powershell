# NPM: Node Package Manager
if (Get-Command "npm" -errorAction SilentlyContinue)
{
    if (Get-Command "n" -errorAction SilentlyContinue)
    {
        n stable
        npm update
    }
}