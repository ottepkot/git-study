#!/usr/bin/env python

try:
    num1 = float(input("Enter the first number: "))
    num2 = float(input("Enter the second number: "))

    result = num1 / num2

    print(f"The result of division is: {result}")

except ValueError as ve:
    print(f"Error: {ve}. Please enter valid numbers.")

except ZeroDivisionError:
    print("Error: Division by zero is not allowed.")

except Exception as e:
    print(f"An unexpected error occurred: {e}")
