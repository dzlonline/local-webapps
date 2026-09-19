#!/data/data/com.termux/files/usr/bin/bash
set -e
cd "$(dirname "$0")"
PORT="${1:-8000}"
echo "Serving at http://localhost:${PORT}/"
python -m http.server "$PORT" --bind 127.0.0.1
