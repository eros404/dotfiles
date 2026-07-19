alias cat="bat -p"

set -gx MANPAGER "bat -plman"

abbr -a --position anywhere -- --help '--help | bat -plhelp'

