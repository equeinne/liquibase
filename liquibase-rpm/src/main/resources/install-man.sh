#!/bin/sh
echo "Installing man page (and run makewhatis, may take a few seconds) ..."
gzip -f /opt/dbmanul/man/dbmanul.1
mkdir -p /usr/man/man1
rm -f /usr/man/man1/dbmanul.1.gz
cp /opt/dbmanul/man/dbmanul.1.gz /usr/man/man1/
echo "Running makewhatis ..."
makewhatis
echo "man page installed."
