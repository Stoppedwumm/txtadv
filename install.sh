#!/bin/bash

clear

# Function to display a welcome message
welcome() {
    echo "Welcome to the Bash Text Adventure!"
    echo "Your journey begins now."
    echo "-----------------------------------"
}

end() {
    echo "-----------------------------------"
}

# Function for the first decision
forest_path() {
    echo "You find yourself at the edge of a dark forest."
    echo "Do you want to (1) Enter the forest or (2) Walk along the edge?"
    read -p "Your choice: " choice

    case $choice in
        1)
            echo "You step into the forest and hear eerie sounds around you."
            echo "After a while, you see a fork in the path."
            fork_path
            ;;
        2)
            echo "You walk along the edge of the forest and find a small village."
            village
            ;;
        *)
            echo "Invalid choice. Please try again."
            forest_path
            ;;
    esac
}

# Function for the fork in the path
fork_path() {
    echo "Do you take the (1) Left path or the (2) Right path?"
    read -p "Your choice: " choice

    case $choice in
        1)
            echo "The left path leads you to a hidden treasure chest!"
            echo "Congratulations, you've found the treasure and won the game!"
            end
            exit 0
            ;;
        2)
            echo "The right path leads to a deep pit. You fall and lose the game."
            end
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            fork_path
            ;;
    esac
}

# Function for the village
village() {
    echo "In the village, you meet a friendly merchant."
    echo "The merchant offers you a map for 10 gold coins."
    echo "Do you (1) Buy the map or (2) Refuse the offer?"
    read -p "Your choice: " choice

    case $choice in
        1)
            echo "You buy the map and discover a shortcut to the treasure."
            echo "Following the map, you find the treasure and win the game!"
            end
            exit 0
            ;;
        2)
            echo "You refuse the offer and wander aimlessly."
            echo "Unfortunately, you get lost and the game ends."
            end
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            village
            ;;
    esac
}

# Start the game
welcome
forest_path
