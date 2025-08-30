# Conventions for writing HTML templates
## Conceptual
1. DRY: Dont repeat yourself! Any repeated HTML structure should live in a template.
2. Seperation of responsibility: Every template only has functions related to a single module/concern. If a template is large enough to have multiple, it should probably be split into smaller templates.
3. Components: If sections of the page need to be dynamically spawned in/taken out, use the slot.html jinja (uses &lt;slot&gt;) template to define where units go, and use the component.html jinja (uses &lt;template&gt;) template to define the reusable units.
- ModComponents will handle extraction, registration, and instantiation.
4. Use normal templates where possible. Use slots/components only when dynamic composition is necessary.
5. Split only if it makes reuse or readability meaningfully better

## Practical
### File naming
Use snake_case.

Templates relevant to all modules will be named "common.[name].html". Templates relevant to a module will be named "module.[name].html"

[name] can expand to [name].[name] and [name].[name] etc, where it is [large scope][smaller scope].

### Components
*worry about this after we have implemented ModComponents lol.