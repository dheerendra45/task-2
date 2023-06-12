#!/bin/bash

# Function to generate a random password using shuf command
generate_password_shuf() {
    local length=$1
    chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
    shuf -n "$length" -e $(echo $chars | grep -o .) | tr -d '\n'
}

# Read password length from user
read -p "Enter password length: " length

# Generate and print the random password
password=$(generate_password_shuf "$length")
echo "Random Password (using shuf command): $password"

