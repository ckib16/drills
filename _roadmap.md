# Roadmap Checklist
## Use Tiny Apps Workflow (Practicing Rails - Chpt 1)

Ruby:  
- Blocks
- Enumerable, strings, hashes, arrays, dates, and time
- [x] Basic Syntax
- [x] Attributes (attr_accessor etc)
- [x] Classes and instance variables
- [x] How to search and read the API documentation

Rails:  
- Form helpers
- link_to and routes
- How data gets from the view to the model, and back up (params, rails response cycle)
- Associations and Scopes
- Validations  
- Migrations
- [x] Generators

HTML / CSS:  
- Forms and inputs
- [x] The “Markdown Subset” (headers, strong, em, lists, links, images)
- [x] Bootstrap

TDD
- capybara matchers
- rspec matchers
- Workflow - overcoming "writer's block" (See Practicing Rails Ch.4)
- "Testing Rails" leanpub (new version)
  - What: unit test areas?(see USCIS notes): validations, methods, ___(?)
  - How: Arrange, Act, Assert
  - Quantity: Happy path, sad path, edge cases

ES6 & React:  
- ES6: "The Javascript Way" leanpub
  - Learn the 80% you’ll actually use:
  - arrows • let/const • import • classes • destructuring
- create-react-app
- "Rails 5 + React Course" Learnetto

# Details
## Ruby
- **Basic syntax.** You should know how to call methods, do math, write if statements, that kind of thing.
- **Blocks.** In Rails, you’ll use methods like `form_for` and`each` that pass values to a block. You should understand what blocks are, how they’re used, and how to write them.
- **Attributes.** You don’t have to know how attr_reader, attr_writer, and attr_accessor work internally, but you should be able to use them.
- **Defining classes and instance variables**. Otherwise, you won’t be able to understand, write, or modify your Rails code.
- **Core data structures.** You should know a lot about:
  - Enumerable
  - Array
  - String
  - Hash
  - Date
  - Time
  - DateTime  

Study their APIs closely. You’ll spend a surprising amount of time with these classes in your apps. Learn these well, and you’ll do amazing things with only a single, clear line of code.

## Rails
- **Generators.** They’re especially great for building tiny Rails apps.
- **Migrations.** you should know how to generate and modify database tables to store data.
- **Validations.** You can’t write a professional Rails app without validating data.
- **ActiveRecord Associations and Scopes.** Well-written associations can make the rest of your Rails code much simpler. A lot of your time in Rails will be spent using associations and scopes.
- **Form helpers.** Most Rails apps need to collect some data, so learning the form helpers well will help you out.
- **`link_to` and routes.** Knowing how URLs map to code is important, so you don’t get lost in your app
- **How values make it from the controller to the view and back.** This can be confusing, and if you don’t understand it you can run into weird bugs that’ll take forever to fix up.

Generally, **if you spend most of your time learning ActiveRecord well, you’ll be fine.** Most of your Rails code will be in ActiveRecord models or plain Ruby objects.

## HTML & CSS
- **`forms` & `inputs`:** Even if you use form_for in Rails instead of writing forms by hand, you’ll need to know how the different kinds of input look and act. And you’ll spend enough time working with forms that they’re worth learning well.
- **"markdown" subset of tags** (h1, links, p, ul, li, formatting)
- CSS: just use **bootstrap** or materialize