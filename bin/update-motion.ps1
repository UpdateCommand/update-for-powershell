# RubyMotion: requires up-to-date license
if (Get-Command "motion" -errorAction SilentlyContinue)
{
    motion update
}