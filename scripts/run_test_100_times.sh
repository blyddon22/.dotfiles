#!/bin/bash

# Number of test runs
num_runs=100

# Loop and run the tests
for i in $(seq 1 $num_runs); do
  echo "Running test: $i/$num_runs"

  # Run the Go tests and capture the output and exit code
  output=$(go test -run "TestQueryer_GetPlaceholderConnections_NoConnectionPermissions" 2>&1)  # ./... runs tests in current directory and subdirectories. Adjust as needed.
  exit_code=$?

  # Print the output of the test run
  echo "$output"

  # Check the exit code.  Non-zero means tests failed.
  if [ $exit_code -ne 0 ]; then
    echo "Tests failed on run $i. Exiting."
    exit $exit_code # Exit immediately if a run fails.  Comment this out to continue.
    # Or, you can just print a message and continue:
    # echo "Tests failed on run $i. Continuing..."
  fi

  echo "--------------------------------------------------" # Separator for clarity
done

echo "Finished $num_runs test runs."
