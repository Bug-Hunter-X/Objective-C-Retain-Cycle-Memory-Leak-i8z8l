# Objective-C Retain Cycle Bug
This repository demonstrates a classic memory management issue in Objective-C: a retain cycle leading to memory leaks.  The `retainCycleBug.m` file shows the problematic code, while `retainCycleSolution.m` offers a solution using `weak` properties.

**Problem:** Strong references create a circular dependency, preventing objects from being deallocated.

**Solution:** Utilize `weak` references to break the cycle and allow for proper memory management.

This example is crucial for understanding proper memory management in Objective-C and avoiding common pitfalls.