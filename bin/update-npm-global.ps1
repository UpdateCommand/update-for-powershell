# NPM: Node Package Manager
if (Get-Command "npm" -errorAction SilentlyContinue)
{
    npm install -g npm
    npm update -g
    # Via local
    npm install npm
    npm update
    # Via manager
    if (Get-Command "n" -errorAction SilentlyContinue)
    {
        n stable
        npm update -g
        npm update
    }
}