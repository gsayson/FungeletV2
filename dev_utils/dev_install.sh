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
echo "This script is about to install jinja2-cli, sass and typescript globally."
echo "If you are okay with this, press enter to continue."
read

# Base tech stack. Uhrm currently all global installs but eh.
echo "============Installing jinja2-cli"
pip3 install jinja2-cli 

echo "============Installing sass"
npm install -g sass

echo "============Installing typescript"
npm install -g typescript

# Extra utils.
echo "This script is about to install when-changed globally."
echo "It is used in dev watch_build.sh"
echo "If you are okay with this, press enter to continue."
read
pip install https://github.com/joh/when-changed/archive/master.zip