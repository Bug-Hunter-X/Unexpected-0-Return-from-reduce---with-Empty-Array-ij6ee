# Unexpected 0 Return from reduce() with Empty Array in Swift

This repository demonstrates a subtle bug in Swift's `reduce` function when used with an empty array and an initial value. The function silently returns the initial value without any errors, leading to unexpected behavior in the program. This can be hard to track down as there are no warnings or error messages generated.  The solution showcases a more robust approach using optional binding to handle empty arrays gracefully.

## Bug Report

The provided code in `bug.swift` shows the unexpected behavior. The `reduce` function on an empty array returns 0, even though one might expect an error or a different outcome.

## Solution

The `bugSolution.swift` demonstrates a solution that uses optional binding to check for an empty array before performing the reduction.  This makes the code safer and avoids potential errors caused by unexpected inputs.