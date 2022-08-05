# Rust programming language update tool
if (Get-Command "rustup" -errorAction SilentlyContinue)
{
    rustup update
}