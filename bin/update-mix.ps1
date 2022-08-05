# Mix for Elixir
if (Get-Command "mix" -errorAction SilentlyContinue)
{
    mix local.hex --force
    mix local.rebar --force
}