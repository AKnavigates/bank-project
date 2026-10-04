#!/bin/bash
balance=1000

while true; do
    echo "-----------------------------"
    echo "Welcome to Simple Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "-----------------------------"
    read -p "Choose an option: " choice

    case $choice in
        1) echo "Deposit section" ;;
        2) echo "Withdraw section" ;;
        3) echo "Your current balance: $balance" ;;
        4) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid option!"
           echo "Please choose a valid option." ;;
    esac
done
