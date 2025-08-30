# Conventions for sass
1. File naming: 
- Follows from templates, where names are in the form "[module].sass", "[module].[name].sass", "[module].[wider scope].[smaller scope].sass" etc.
- Module is "common" if it is relevant to all modules.
2. Settings: 
- Common values should be wrapped in an sass variable/@extend. 
- These variables go into "[module].settings.sass" or "common.settings.sass". 
- Module-scoped variables will follow the naming convention module_name.
3. Prefer common.settings.sass unless a variable is module-specific.
4. Each sass file is only relevant to the html files/group of html files it is named after. 
- Eg. "sidebar.sass" is relevant to "sidebar.html" and "sidebar.edge.html". Common is relevant to all files.

## Importing structure
- Do @use '[module]' as * in [module].sass
- Do @use 'common' in others.
- main.sass imports all other [module].sass
- [module].sass imports [module].[part].sass.
- Only sass files in the module can import [module].[part].sass.
  - IMPORT common.sass NOT common.settings.sass.
- Modules should never need to import each other.

## Documentation
Please add a brief comment on the purpose of the file at the head of the file.

Document settings with a comment after to enable intellisense.