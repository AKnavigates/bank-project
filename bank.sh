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
        1)
            read -p "Enter amount to deposit: " amount
            balance=$((balance + amount))
            echo "Deposited $amount."
            echo "New balance: $balance"
            ;;
        2)
            read -p "Enter amount to withdraw: " amount
            if [ "$amount" -gt "$balance" ]; then
                echo "Insufficient funds!"
            else
                balance=$((balance - amount))
                echo "Withdrew $amount."
                echo "New balance: $balance"
            fi
            ;;
        3) echo "Your current balance: $balance" ;;
        4) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid option!"
           echo "Please choose a valid option." ;;
    esac
done
