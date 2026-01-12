#!/bin/bash

echo "🔍 Starting Build Validation..."

if [ -f "index.html" ]; then
    echo "✅ index.html found"
    echo "BUILD STATUS: SUCCESS" > build_report.txt
else
    echo "❌ index.html not found"
    echo "BUILD STATUS: FAILURE" > build_report.txt
    exit 1
fi

echo "BUILD TIME: $(date)" >> build_report.txt
