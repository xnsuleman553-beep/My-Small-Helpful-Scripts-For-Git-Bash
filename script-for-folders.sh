if [ -d "Assets" ]; then
    rm -rf Assets
    rm -rf Public-Sources
    rm -rf Levels
    rm -rf Objects
    rm -rf Scripts
fi
if [ -d ".git" ]; then
    rm -rf app/
    rm -rf tests/
    rm -rf config/
    rm -rf docs/
fi
echo "We Recommend You To Run This File On A Folder"
echo "This Is A Folder Making Program"
read -p "For Which Project You Want To Make Folders Game/GitProject: " asking
if [ "$asking" == "Game" ]; then
    mkdir Assets
    mkdir Public-Sources
    mkdir Scripts
    mkdir Levels
    mkdir Objects
    mkdir Assets/Audio
    mkdir Assets/Textures
    mkdir Assets/Models
    mkdir Assets/Fonts
    mkdir Scripts/Players
    mkdir Scripts/Enemies
fi
if [ "$asking" == "GitProject" ]; then
    mkdir .git/
    mkdir .gitignore
    mkdir app/
    mkdir tests/
    mkdir config/
    mkdir docs/
fi
ls
read -p "Do You Want Delete The Folders y/n: " delete
if [ "$delete" == "y" ] || [ "$delete" == "Y" ]; then
    if [ -d "Assets" ]; then
        rm -rf Assets
        rm -rf Public-Sources
        rm -rf Levels
        rm -rf Objects
        rm -rf Scripts
        echo "Folders Deleted"
    fi
    if [ -d ".git" ]; then
        rm -rf app/
        rm -rf tests/
        rm -rf config/
        rm -rf docs/
        echo "Folders Deleted"
    fi
fi