#!/usr/bin/env sh

# Basic tool to convert `wa.user.css` to `darkmode.css` to
# be then used with Ferdi/Franz/etc.

[ $# -eq 0 ] && {
    echo "Invalid arguments. Usage: $0 -h" >&2
    exit 1
}

convert() {
    echo "Converting..."

    input="wa.user.css"
    output="darkmode.css"

    sed -n '/:root/,$p' $input | sed 's/^\ \ //; $d' > $output

    [ -e $output ] && echo "Done! $output is ready." \
                   || echo 'File not found!' >&2
}

while getopts "cfh" option; do
    case $option in
        c) echo "Compiling..."
            # TODO: Implement =compile= function.
            ;;

        "f") CONVERT=1 ;;

        *) echo "Usage..."
            # TODO: Implement =usage= function.
            ;;
    esac
done

[ -n "${CONVERT+x}" ] && convert
