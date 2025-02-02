# Unhandled JSON Key Access in Dart

This example showcases an uncommon but crucial error in Dart when dealing with JSON responses: attempting to access a non-existent key.  This code demonstrates the issue and provides a solution to prevent crashes and ensure robust handling of potential API response variations.

## Problem

Accessing a missing key in a JSON object results in a runtime error.  The code lacks proper error handling for this scenario.  This is easily overlooked and can lead to app crashes.

## Solution

The improved version adds comprehensive error handling.  It uses a try-catch block, specifically checking for `NoSuchMethodError` to detect if a key is missing.  This allows graceful recovery or appropriate error reporting instead of an abrupt program termination.