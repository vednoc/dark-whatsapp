#!/usr/bin/env sh

# Basic tool to convert `wa.user.css` to `darkmode.css` to
# be then used with Ferdi/Franz/etc.

echo 'Converting...'

sed -n '/:root/,$p' wa.user.css | sed 's/^\ \ //; $d' > darkmode.css

[ -e darkmode.css ] && echo 'Done! darkmode.css is ready.' \
                    || echo 'File not found!' >&2
