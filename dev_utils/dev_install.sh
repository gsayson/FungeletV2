# Run this script to install all dependencies needed to build and develop fungelet.

# Preresquisites: npm, python3 w/ pip3
if pip3 --version; then
    echo "Ok, pip3 (python3) detected"
else
    echo "No pip3 (python3) installed! Please install it first."
    exit
fi

if npm --version; then
    echo "Ok, npm (nodejs) detected"
else
    echo "No npm installed! Please install it first."
    exit
fi

# Confirm.
echo "This script is about to install staticninja, sass and typescript globally."
echo "If you are okay with this, press enter to continue."
read

# Base tech stack. Uhrm currently all global installs but eh.
echo "============Installing staticninja"
pip3 install staticjinja 

echo "============Installing sass"
npm install -g sass

echo "============Installing typescript"
npm install -g typescript

