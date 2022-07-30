## Program Tracking

program_command="update.ps1"
program_version="1.0.0"
program_updated="2022-07-30T02:45:01Z"
program_license="GPL-2.0-or-later or contact us for custom"
program_contact="Joel Parker Henderson (https://joelparkerhenderson.com)"

## Help Function

help(){
cat << EOF

Update Command

Run update commands for PowerShell by Microsoft.

Guidance:

  * Each script should be testing that it has what it needs to run.
    This includes testing for any platform-specific needs.

  * Each script should try to clean before running and after running.
    This helps create disk space, and helps maintain dependencies.

We welcome patches, pull requests, and ideas.


## Options

  * --foo=<value>:
      set the foo variable to a value

  * -h --help:
      print helpful information

  * -v --version:
      print the program version number

  * --program-command:
      print the program command name

  * --program-version:
      print the program version number

  * --program-updated:
      print the program updated date

  * --program-license:
      print the program license name

  * --program-contact:
      print the program contact information for the maintainer

Heuristics for ordering:

  1. Update OS e.g. Microsoft Windows Update and all Microsoft products.

  2. Update system packages e.g. \`scoop\`, \`choco\`.

  3. Update languages e.g. Rust.

  4. Update tool packages: e.g. Node \`npm\`, Python \`pip\`, Ruby \`gem\`.

  5. Update repositories: \`/opt\`, \`~/git\`, etc.

  
## Tracking

  * Command: $program_command
  * Version: $program_version
  * Updated: $program_updated
  * License: $program_license
  * Contact: $program_contact
EOF
}

## Function helpers
out() { printf %s\\n "$*" ; };
err() { >&2 printf %s\\n "$*" ; };
die() { err $(log) "$*" ; exit 255 ; };
log() { printf '%s %s %s\n' "$( now )" $$ "$*" ; };
now() { date -u "+%Y-%m-%dT%H:%M:%S.%NZ" ; };
sec() { date "+%s" ; };
zid() { hexdump -n 16 -v -e '16/1 "%02x" "\n"' /dev/random ; };
cmd() { command -v $1 >/dev/null 2>&1 ; };
dot_all() { find "${1:-}" -type f \( -perm -u=x -o -perm -g=x -o -perm -o=x \) -exec test -x {} \; -exec . {} \; ; }
run_all() { find "${1:-}" -type f \( -perm -u=x -o -perm -g=x -o -perm -o=x \) -exec test -x {} \; -exec {} \; ; }

## Home helpers
log_home() { out "${LOG_HOME:=$HOME/.log}" ; };
data_home() { out "${XDG_DATA_HOME:=$HOME/.local/share}" ; };
cache_home() { out "${XDG_CACHE_HOME:=$HOME/.cache}" ; };
config_home() { out "${XDG_CONFIG_HOME:-$HOME/.config}" ; };
runtime_home() { out "${XDG_RUNTIME_HOME:=$HOME/.runtime}" ; };
temp_home() { out $(mktemp -d -t "${1:-$(zid)}"); };

## Directory helpers
log_dir() { out "$(log_home)/$program_command" ; };
data_dir() { out "$(data_home)/$program_command" ; };
cache_dir() { out "$(cache_home)/$program_command" ; };
config_dir() { out "$(config_home)/$program_command" ; };
runtime_dir() { out "$(runtime_home)/$program_command" ; };
temp_dir() { out "$(temp_home)/$program_command" ; };

## Options
if [ "$#" -eq 1 ]; then
  case "$1" in
    -h|--help)
      help; exit 0
      ;;
    -v|--version)
      out "$program_version"; exit 0
      ;;
    --program-command)
      out "$program_command"; exit 0
      ;;
    --program-version)
      out "$program_version"; exit 0
      ;;
    --program-updated)
      out "$program_version"; exit 0
      ;;
    --program-license)
      out "$program_license"; exit 0
      ;;
    --program-contact)
      out "$program_contact"; exit 0
      ;;
    --*=*)
      key="${1#--}"; key="${key%%=*}";
      val="${1#*=}";
      eval "$key"=\$val
      ;;
  esac
fi

## Run the user's own scripts
x="$(config_home)/update/update-first" && [ -d "$x" ] && dot_all "$x"

## Update Microsoft Windows system and all Microsoft products
. update-windows.ps1

## Update via system-wide package managers
. update-choco.ps1 || :
. update-scoop.ps1 || :
