#!/bin/bash

function menu_principal() {
    clear
    TIME=1
    echo "\n$0\n"
    echo "Choose an option below!\n"
    echo "1 - Verify desktop processor"
    echo "2 - Verify system kernel"
    echo "3 - Verify installed software"
    echo "4 - Operating system version"
    echo "5 - Verify desktop memory"
    echo "6 - Verify serial number"
    echo "7 - Verify system IP"
    echo "0 - Exit"
    echo "\n"    
    read -p "Chosen option: " opcao

    case $opcao in
        1)
            function processor() {
                CPU_INFO=$(grep -m1 -i "^model name" /proc/cpuinfo | cut -d":" -f2 | sed 's/^ //')
                echo "CPU model: $CPU_INFO"
                sleep $TIME
            }
            processor
            ;;
        
        2)
            function kernel() {
                KERNEL_VERSION=$(uname -r)
                echo "Kernel version: $KERNEL_VERSION"
            }
            kernel
            ;;
        
        3)
            function softwares() {
                echo "\nChoose an option below for program's list!"
                echo "1 - List installed software (Ubuntu)"
                echo "2 - List installed software (Fedora)"
                echo "3 - Install common software"
                echo "4 - Back to menu"
                echo "\n"
                read -p "Chosen option: " alternative

                case $alternative in
                    1)
                        echo "Listing installed software on Ubuntu..."
                        dpkg -l > /tmp/programs.txt
                        echo "Programs listed at /tmp/programs.txt"
                        ;;
                    2)
                        echo "Listing installed software on Fedora..."
                        yum list installed > /tmp/programs.txt
                        echo "Programs listed at /tmp/programs.txt"
                        ;;
                    3)
                        echo "Installing common software..."
                        LIST_OF_APPS="pinta brasero gimp vlc inkscape blender filezilla"
                        apt update && apt install -y $LIST_OF_APPS
                        ;;
                    4)
                        return
                        ;;
                    *)
                        echo "Invalid option!"
                        ;;
                esac
            }
            softwares
            ;;

        4)
            function system_version() {
                if [ -f /etc/os-release ]; then
                    . /etc/os-release
                    echo "The system version: $PRETTY_NAME"
                else
                    echo "System not supported"
                fi
            }
            system_version
            ;;
        
        5)
            function memory() {
                MEMORY_FREE=$(free -m | awk '/^Mem:/ {print $4}')
                echo "Free memory: ${MEMORY_FREE}MB"
            }
            memory
            ;;
        
        6)
            function serial() {
                SERIAL_NUMBER=$(dmidecode -s system-serial-number 2>/dev/null)
                echo "Serial Number: $SERIAL_NUMBER"
            }
            serial
            ;;
        
        7)
            function ip_address() {
                IP_SYSTEM=$(hostname -I | awk '{print $1}')
                echo "IP Address: $IP_SYSTEM"
            }
            ip_address
            ;;
        
        0)
            echo "Exiting the system..."
            sleep $TIME
            exit 0
            ;;
        
        *)
            echo "Invalid option, try again!"
            ;;
    esac
    read -n 1 -s -r -p "Press any key to return to the main menu..."
    menu_principal
}

menu_principal
