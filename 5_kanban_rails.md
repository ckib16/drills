# Kanban Rail App Steps

Source - http://blog.deveo.com/how-to-create-a-kanban-inspired-to-do-list-application-in-ruby-and-make-version-control-part-of-your-workflow/

## Start
- `rails new` with postgres
- Git init & push
- Generate Pages controller w/ home view
- Root to pages#home

## Design
- Header partial to application.html.erb
- Add materialize or bootstrap (gem & import to application.scss)
- Add font-awesome (gem & import to application.scss)
- Add navbar to partial 
- Add card template to home view

## Links
- Fix edit & back links in navbar & cards 
- Make links into button

## User
- install devise
- Generate devise user  + views
- Fix sign up & login links
- Make conditional for sign in/out in views

## Task
- Scaffold Task with strings content & state with default "open"; user_id integer
- Controller#index : @open @wip @closed activerecord queries
- Associations for task & user
- Validations for task (content & user_id)

## 3 columns for view

## Def change for state change 
- add route
- Add links to new route

## Clean up forms
- Task partial
- Font awesome icons for arrows

## Deploy
- Set production secret key base to ENV var (figaro)
- Heroku create
- git push heroku master
- Heroku run rails db:migrate 
