#!/bin/bash

clear

# Enhanced Color Scheme
RED='\033[1;91m'
GREEN='\033[1;92m'
YELLOW='\033[1;93m'
BLUE='\033[1;94m'
CYAN='\033[1;96m'
MAGENTA='\033[1;95m'
PURPLE='\033[1;35m'
ORANGE='\033[1;33m'
NC='\033[0m'


 #Detect OS
if [[ $(uname -o 2>/dev/null) == *Android* ]]; then
    OS="termux"
    BIN_DIR="$PREFIX/bin"
    echo -e "${GREEN}✓ Running on ${CYAN}Termux${GREEN} (Android)${NC}"
else
    OS="ubuntu"
    BIN_DIR="/usr/local/bin"
    echo -e "${GREEN}✓ Running on ${CYAN}Ubuntu/Linux${NC}"
fi

# DEFINE TOOL LIST
declare -A TOOLS
TOOLS["refiner"]="Contacts-refine"
TOOLS["pro-contacts"]="ForexContactsPro"

# TOOL INSTALL FUNCTION
aq() {
if [[ "$1" == "install" ]]; then
case "$2" in
refiner)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/Contacts-refine/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
pro-contacts)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/ForexContactsPro/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
*)
echo -e "${RED}✗ Unknown tool: $2${NC}"
;;
esac
else
echo -e "${YELLOW}Usage: aq install <tool-name>${NC}"
fi
}

export -f aq
sleep 1
# Customization 
customize_terminal() {
    if [[ "$OS" == "termux" ]]; then
   
        
        # Create custom bashrc with proper escaping
        cat > ~/../usr/etc/bash.bashrc << 'EOL'
#!/data/data/com.termux/files/usr/bin/bash

# Custom Trade Terminal
echo -e "\033[1;91m
  
▗▄▄▄▖  ▗▄▖ ▗▄▄▄ ▗▄▄▄▖▗▄▄▄▖▗▄▄▖ 
▐▌ ▐▌ ▐▌ ▐▌▐▌  █▐▌   ▐▌   ▐▌ ▐▌
▐▌ ▐▌ ▐▛▀▜▌▐▌  █▐▛▀▀▘▐▛▀▀▘▐▛▀▚▖
▐▙▄▟▙▖▐▌ ▐▌▐▙▄▄▀▐▙▄▄▖▐▙▄▄▖▐▌ ▐▌
                               
                                                            

\033[0m"

echo -e "\033[1;92m❤️  Welcome to Trade With Qadeer Terminal!\033[0m"
echo -e "\033[1;93m📢  Educational Use Only - Refine Responsibly\033[0m"
echo -e "\033[1;94m© $(date +%Y) Trade With Qadeer. All rights reserved.\033[0m"
echo ""

echo -e "\033[1;96mInstalled Tools:\033[0m"
declare -A TOOLS
TOOLS["refiner"]="Contacts-refine"
TOOLS["pro-contacts"]="ForexContactsPro"

aq() {
if [[ "$1" == "install" ]]; then
case "$2" in
refiner)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/Contacts-refine/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
pro-contacts)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/ForexContactsPro/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
*)
echo -e "${RED}✗ Unknown tool: $2${NC}"
;;
esac
else
echo -e "${YELLOW}Usage:${NC} ${CYAN}aq install <tool-name>${NC}"
fi
}

export -f aq

for tool in "${!TOOLS[@]}"; do
dir="$HOME/${TOOLS[$tool]}"
if [ -d "$dir" ]; then
echo -e "  \033[1;95m• ${tool}\033[0m"
echo -e "    Run: \033[1;97m${tool}\033[0m"
else
echo -e "  \033[1;91m• ${tool} not installed\033[0m"
echo -e "    Install: \033[1;97maq install ${tool}\033[0m"
fi
done
# System information
echo -e "\033[1;96mSystem Info:\033[0m"
echo -e "  \033[1;95m• OS:\033[0m $(uname -o)"
echo -e "  \033[1;95m• Device:\033[0m $(getprop ro.product.model)"
echo -e "  \033[1;95m• Time:\033[0m $(date +%T)"
echo ""

# ✅ MOTD FUNCTION
# ──────────────────────────────────────────────────────────
generate_motd() {
    echo -e "\033[0;93m________________________________________________________"
    echo "|                                                      |"
    echo "|    ████████╗██████╗  █████╗ ██████╗ ███████╗         |"
    echo "|    ╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝         |"
    echo "|       ██║   ██████╔╝███████║██║  ██║█████╗           |"
    echo "|       ██║   ██╔══██╗██╔══██║██║  ██║██╔══╝           |"
    echo "|       ██║   ██║  ██║██║  ██║██████╔╝███████╗         |"
    echo "|       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝         |"
    echo "|                                                      |"
    echo "| Contact Refiner by Abdul Qadeer Gabol                |"
    echo "| Educational Use Only - ACCsi Forex                   |"
    echo "________________________________________________________"
     
    
# Custom Trade Terminal
echo -e "\033[1;91m
  
▗▄▄▄▖  ▗▄▖ ▗▄▄▄ ▗▄▄▄▖▗▄▄▄▖▗▄▄▖ 
▐▌ ▐▌ ▐▌ ▐▌▐▌  █▐▌   ▐▌   ▐▌ ▐▌
▐▌ ▐▌ ▐▛▀▜▌▐▌  █▐▛▀▀▘▐▛▀▀▘▐▛▀▚▖
▐▙▄▟▙▖▐▌ ▐▌▐▙▄▄▀▐▙▄▄▖▐▙▄▄▖▐▌ ▐▌
                               
                                                            

\033[0m"

echo -e "\033[1;92m❤️  Welcome to Trade With Qadeer Terminal!\033[0m"
echo -e "\033[1;93m📢  Educational Use Only - Refine Responsibly\033[0m"
echo -e "\033[1;94m© $(date +%Y) Trade With Qadeer. All rights reserved.\033[0m"
echo ""

echo -e "\033[1;96mInstalled Tools:\033[0m"
declare -A TOOLS
TOOLS["refiner"]="Contacts-refine"
TOOLS["pro-contacts"]="ForexContactsPro"

aq() {
if [[ "$1" == "install" ]]; then
case "$2" in
refiner)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/Contacts-refine/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
pro-contacts)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/ForexContactsPro/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
*)
echo -e "${RED}✗ Unknown tool: $2${NC}"
;;
esac
else
echo -e "${YELLOW}Usage: aq install <tool-name>${NC}"
fi
}

export -f aq

for tool in "${!TOOLS[@]}"; do
dir="$HOME/${TOOLS[$tool]}"
if [ -d "$dir" ]; then
echo -e "  \033[1;95m• ${tool}\033[0m"
echo -e "    Run: \033[1;97m${tool}\033[0m"
else
echo -e "  \033[1;91m• ${tool} not installed\033[0m"
echo -e "    Install: \033[1;97maq install ${tool}\033[0m"
fi
done
# System information
echo -e "\033[1;96mSystem Info:\033[0m"
echo -e "  \033[1;95m• OS:\033[0m $(uname -o)"
echo -e "  \033[1;95m• Device:\033[0m $(getprop ro.product.model)"
echo -e "  \033[1;95m• Time:\033[0m $(date +%T)"
echo ""
}

# ──────────────────────────────────────────────────────────
# ✅ CLEAR FUNCTION
# ──────────────────────────────────────────────────────────
clear() {
  command clear
  generate_motd
}

# Custom prompt with colors, time and directory
PS1='\[\033[1;91m\]\t \[\033[1;92m\]Qadeer ➤ Write Your Cmds ➤ \[\033[1;96m\]\w \[\033[1;91m\]\$ '
EOL

        # Create custom motd
        cat > ~/../usr/etc/motd << 'EOL'
________________________________________________________
|                                                      |
|    ████████╗██████╗  █████╗ ██████╗ ███████╗         |
|    ╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝         |
|       ██║   ██████╔╝███████║██║  ██║█████╗           |
|       ██║   ██╔══██╗██╔══██║██║  ██║██╔══╝           |
|       ██║   ██║  ██║██║  ██║██████╔╝███████╗         |
|       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝         |
|                                                      |
| Contact Refiner by Abdul Qadeer Gabol                |
| Educational Use Only - ACCsi Forex                   |
|______________________________________________________|
EOL

        echo -e "${GREEN}✓ Termux terminal customized successfully!${NC}"
        echo -e "${YELLOW}⚠️ Restart Termux to see the new look${NC}"
    else
        # Ubuntu customization
        echo -ne "\n${CYAN}Install custom terminal look? [${GREEN}Y${CYAN}/${RED}n${CYAN}]: ${NC}"
        read ubuntu_choice
        
        if [[ "${ubuntu_choice,,}" != "n" ]]; then
            
            
            # Backup existing bashrc
            if [ ! -f ~/.bashrc.bak ]; then
                cp ~/.bashrc ~/.bashrc.bak
                echo -e "${GREEN}✓ Created backup of .bashrc${NC}"
            fi

            # Remove old banner block
            sed -i '/# Custom Trade With Qadeer Terminal/,/End Trade With Qadeer Terminal Banner/d' ~/.bashrc

            # Add new one safely
            cat >> ~/.bashrc << 'EOL'

# Custom ACCsi Forex Terminal
if [[ -z "$ACC_BANNER_SHOWN" ]]; then
  export ACC_BANNER_SHOWN=1

  echo -e "\033[1;91m
   
▗▄▄▄▖  ▗▄▖ ▗▄▄▄ ▗▄▄▄▖▗▄▄▄▖▗▄▄▖ 
▐▌ ▐▌ ▐▌ ▐▌▐▌  █▐▌   ▐▌   ▐▌ ▐▌
▐▌ ▐▌ ▐▛▀▜▌▐▌  █▐▛▀▀▘▐▛▀▀▘▐▛▀▚▖
▐▙▄▟▙▖▐▌ ▐▌▐▙▄▄▀▐▙▄▄▖▐▙▄▄▖▐▌ ▐▌
                               
                               
                               

\033[0m"

  echo -e "\033[1;92m❤️  Welcome to Trade With Qadeer Terminal!\033[0m"
  echo -e "\033[1;93m📢  Educational Use Only - Refine Responsibly\033[0m"
  echo -e "\033[1;94m© $(date +%Y) ACCsi Forex. All rights reserved.\033[0m"
  echo ""

# Show installed tool
 DEFINE TOOL LIST
declare -A TOOLS
TOOLS["refiner"]="Contacts-refine"
TOOLS["pro-contacts"]="ForexContactsPro"

# TOOL INSTALL FUNCTION
aq() {
if [[ "$1" == "install" ]]; then
case "$2" in
refiner)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/Contacts-refine/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
pro-contacts)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/ForexContactsPro/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
*)
echo -e "${RED}✗ Unknown tool: $2${NC}"
;;
esac
else
echo -e "${YELLOW}Usage: aq install <tool-name>${NC}"
fi
}

export -f aq

  echo -e "\033[1;96mInstalled Tools:\033[0m"
for tool in "${!TOOLS[@]}"; do
dir="$HOME/${TOOLS[$tool]}"
if [ -d "$dir" ]; then
echo -e "  \033[1;95m• ${tool}\033[0m"
echo -e "    Run: \033[1;97m${tool}\033[0m"
else
echo -e "  \033[1;91m• ${tool} not installed\033[0m"
echo -e "    Install: \033[1;97maq install ${tool}\033[0m"
done
fi

# ✅ MOTD FUNCTION
# ──────────────────────────────────────────────────────────
generate_motd() {
    echo -e "\033[0;93m________________________________________________________"
    echo "|                                                      |"
    echo "|    ████████╗██████╗  █████╗ ██████╗ ███████╗         |"
    echo "|    ╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝         |"
    echo "|       ██║   ██████╔╝███████║██║  ██║█████╗           |"
    echo "|       ██║   ██╔══██╗██╔══██║██║  ██║██╔══╝           |"
    echo "|       ██║   ██║  ██║██║  ██║██████╔╝███████╗         |"
    echo "|       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝         |"
    echo "|                                                      |"
    echo "| Contact Refiner by Abdul Qadeer Gabol                |"
    echo "| Educational Use Only - ACCsi Forex                   |"
    echo "________________________________________________________"
     
    
# Custom Trade Terminal
echo -e "\033[1;91m
  
▗▄▄▄▖  ▗▄▖ ▗▄▄▄ ▗▄▄▄▖▗▄▄▄▖▗▄▄▖ 
▐▌ ▐▌ ▐▌ ▐▌▐▌  █▐▌   ▐▌   ▐▌ ▐▌
▐▌ ▐▌ ▐▛▀▜▌▐▌  █▐▛▀▀▘▐▛▀▀▘▐▛▀▚▖
▐▙▄▟▙▖▐▌ ▐▌▐▙▄▄▀▐▙▄▄▖▐▙▄▄▖▐▌ ▐▌
                               
                                                            

\033[0m"

echo -e "\033[1;92m❤️  Welcome to Trade With Qadeer Terminal!\033[0m"
echo -e "\033[1;93m📢  Educational Use Only - Refine Responsibly\033[0m"
echo -e "\033[1;94m© $(date +%Y) Trade With Qadeer. All rights reserved.\033[0m"
echo ""

echo -e "\033[1;96mInstalled Tools:\033[0m"
declare -A TOOLS
TOOLS["refiner"]="Contacts-refine"
TOOLS["pro-contacts"]="ForexContactsPro"

aq() {
if [[ "$1" == "install" ]]; then
case "$2" in
refiner)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/Contacts-refine/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
pro-contacts)
pkg install curl -y 2>/dev/null || sudo apt install curl -y
curl -sL https://raw.githubusercontent.com/AbdulMods/ForexContactsPro/main/installation.sh -o installation.sh
bash installation.sh && rm installation.sh
;;
*)
echo -e "${RED}✗ Unknown tool: $2${NC}"
;;
esac
else
echo -e "${YELLOW}Usage: aq install <tool-name>${NC}"
fi
}

export -f aq

for tool in "${!TOOLS[@]}"; do
dir="$HOME/${TOOLS[$tool]}"
if [ -d "$dir" ]; then
echo -e "  \033[1;95m• ${tool}\033[0m"
echo -e "    Run: \033[1;97m${tool}\033[0m"
else
echo -e "  \033[1;91m• ${tool} not installed\033[0m"
echo -e "    Install: \033[1;97maq install ${tool}\033[0m"
fi
done
# System information
echo -e "\033[1;96mSystem Info:\033[0m"
echo -e "  \033[1;95m• OS:\033[0m $(uname -o)"
echo -e "  \033[1;95m• Device:\033[0m $(getprop ro.product.model)"
echo -e "  \033[1;95m• Time:\033[0m $(date +%T)"
echo ""
}

# ──────────────────────────────────────────────────────────
# ✅ CLEAR FUNCTION
# ──────────────────────────────────────────────────────────
clear() {
  command clear
  generate_motd
}
# End Trade With Qadeer Terminal Banner

# Custom prompt
PS1='\[\033[1;91m\]\t \[\033[1;92m\]Qadeer ➤ Write Your Cmds ➤ \[\033[1;96m\]\w \[\033[1;91m\]\$ '
EOL

            echo -e "${GREEN}✓ Ubuntu terminal customized successfully!${NC}"
            echo -e "${YELLOW}⚠️ Restart your terminal to see the new look${NC}"
        else
            echo -e "${YELLOW}✓ Skipping Ubuntu terminal customization${NC}"
        fi
    fi
}

customize_terminal

# ──────────────────────────────────────────────────────────
