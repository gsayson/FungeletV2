# Source code structure
`templates` contains jinja templates, `ts` contains typescript files and `scss` contains scss stylesheets. `assets` contains static assets.

`templates/main.html`, `sass/main.sass` and `ts/main.ts` are all compiled into `built/`. `main.html` will serve as the application file which imports the js and css.

The assets folder is copied straight to built/assets.

Actual program code should not be written in the respective main files. They should instead be placed in modules imported into respective main files.