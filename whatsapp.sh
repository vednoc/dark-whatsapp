#!/usr/bin/env sh

# Basic tool to convert `wa.user.css` to `darkmode.css` to
# be then used with Ferdi/Franz/etc.

sed -n '/:root/,$p' wa.user.css | head -n -1 > darkmode.css
