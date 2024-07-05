#!/bin/bash
set -e

# Restore the database if it does not already exist.

# Run litestream with your app as the subprocess.
exec litestream replicate -exec "/usr/local/bin/myapp -dsn /data/db"
