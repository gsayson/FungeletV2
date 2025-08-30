# Run this file to watch and automatically build ts, scss and jinja.
cd ..
echo "Warning: build folder will be cleared! [Press enter to confirm]"
read

rm built/* # Note: Mildly dangerous?
sleep 1

cd src

# Note: outpath and inpath for typescript are defined in tsconfig.
OUTPATH="../built/"

watch_jinja () {
    jinja2 templates/main.html > ../built/main.html
    echo "Jinja is watching..."
    when-changed templates/ -c "jinja2 templates/main.html > ../built/main.html && echo Change detected! Updated main.html"
}

# Trap Ctrl-C (SIGINT) and terminate everything
trap "echo 'Stopping watchers...'; kill 0" SIGINT SIGTERM

watch_jinja & 
tsc --preserveWatchOutput --project ts/ --watch & 
sass --watch --no-source-map sass/main.sass:$OUTPATH/main.css &

wait # wait till all exit.