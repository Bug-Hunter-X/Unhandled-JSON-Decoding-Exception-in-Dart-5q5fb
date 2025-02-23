# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving asynchronous network requests and JSON decoding.  The `bug.dart` file contains code that fails to handle potential `FormatException` exceptions thrown by `jsonDecode` when the API response is not valid JSON. The solution, `bugSolution.dart`, adds robust error handling to gracefully manage these exceptions.

## Problem

The original code directly uses `jsonDecode` without error handling. If the API returns invalid JSON, a `FormatException` is thrown, causing the application to crash. 

## Solution

The solution uses a `try-catch` block to wrap `jsonDecode`. This allows us to catch `FormatException` and other potential exceptions, preventing app crashes and providing more informative error messages.