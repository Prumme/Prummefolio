#!/bin/bash
# Docker entrypoint script.

/app/bin/my_app eval "Prummefolio.Release.migrate"

exec $@