#!/bin/bash
balance=1000
total_deposit=0
total_withdraw=0

while true; do
    echo "-----------------------------"
    echo "Welcome to Simple Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "5. Statement"
    echo "-----------------------------"
    read -p "Choose an option: " choice

    case $choice in
        1)
            read -p "Enter amount to deposit: " amount
            balance=$((balance + amount))
            total_deposit=$((total_deposit + amount))
            echo "Deposited $amount."
            echo "New balance: $balance"
            ;;
        2)
            read -p "Enter amount to withdraw: " amount
            if [ "$amount" -gt "$balance" ]; then
                echo "Insufficient funds!"
            else
                balance=$((balance - amount))
                total_withdraw=$((total_withdraw + amount))
                echo "Withdrew $amount."
                echo "New balance: $balance"
            fi
            ;;
        3) echo "Your current balance: $balance" ;;
        4) echo "Goodbye!"; exit 0 ;;
        5)
            echo "-----------------------------"
            echo "      Account Statement"
            echo "-----------------------------"
            echo "Total Deposit   : $total_deposit"
            echo "Total Withdraw  : $total_withdraw"
            echo "Current Amount  : $balance"
            echo "-----------------------------"
            ;;
        *) echo "Invalid option!"
           echo "Please choose a valid option." ;;
    esac
done
