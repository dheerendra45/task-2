#!/bin/bash

# Function to generate a random password using /dev/urandom
generate_password_urandom() {
    local length=$1
    tr -dc '[:alnum:]' </dev/urandom | head -c "$length"
}

# Read password length from user
read -p "Enter password length: " length

# Generate and print the random password
password=$(generate_password_urandom "$length")
echo "Random Password (using /dev/urandom): $password"

