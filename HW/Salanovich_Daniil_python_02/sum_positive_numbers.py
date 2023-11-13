#!/usr/bin/env python


total_sum = 0

while True:
    user_input = float(input("Enter a number (negative to exit): "))

    if user_input < 0:
        break

    total_sum += user_input

print(f"Sum of positive numbers: {total_sum}")
