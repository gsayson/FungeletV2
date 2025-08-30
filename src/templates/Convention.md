# Conventions for writing HTML templates
## Conceptual
1. DRY: Dont repeat yourself! Any repeated HTML structure should live in a template.
2. Seperation of responsibility: Every template only has functions related to a single module/concern. 
- If a template is large enough to have multiple overlapping concerns, it should probably be split into smaller templates.
3. Split only if it makes reuse or readability meaningfully better
4. Components: If sections of the page need to be dynamically spawned in/taken out, use Components.
5. Use normal templates where possible. Use slots/components only when dynamic composition is necessary.

## Practical
### File naming: Same as for SASS
- Use snake_case.
- Templates relevant to a module will be named "[module].html". Sub-templates in the form "[module].[part].html" can be made too.
- Templates relevant to all modules use common as the module name.
- [part] can expand to [part].[part] etc, where it is [large scope][smaller scope].

### Components
- worry about this after we have implemented ModComponents lol.
- Components should be small, reusable building blocks
- slot.html jinja template to define where units go, and use the component.html jinja template to define the reusable units.
- ModComponents will handle extraction, registration, and instantiation.

### Documentation
Please add a brief comment on the purpose of the file at the head of the file.