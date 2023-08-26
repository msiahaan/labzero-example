#!/bin/bash

set -euo pipefail

/app/.venv/bin/myapp manage collectstatic --no-input
/app/.venv/bin/myapp run-gunicorn -b 0.0.0.0:8000 --serve-static
