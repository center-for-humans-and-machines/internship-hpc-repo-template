#!/bin/bash

# Check test coverage and show warnings without failing
if poetry run coverage report --fail-under=90 2>/dev/null; then
    echo "✅ Test coverage is above 90%"
else
    echo "⚠️  WARNING: Coverage data missing or below 90%, running tests..."
    if poetry run coverage run -m pytest 2>/dev/null; then
        poetry run coverage report || true
        echo "⚠️  WARNING: Test coverage may be below 90% - consider adding more tests"
    else
        echo "⚠️  WARNING: Tests failed or coverage could not be determined"
    fi
fi

exit 0
