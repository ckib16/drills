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
- Install devise gem
- Generate devise user  + views
- Fix sign up & login links
- Make conditional for sign in/out in views

## Task
- Scaffold Task with 2 strings: content & state (with default "open") & 1 integer: user_id 
- Controller#index : @open @wip @closed activerecord queries
- Associations for task & user
- Validations for task (content & user_id)

## 3 columns for view

## State change for tasks via non-RESTful route
- model: make sure the `state` attribute is added to table via migrations
- controller: add non-RESTful action using `update_attributes`
```rb
# PATCH/PUT - added as custom route: change_task
def change
  @task.update_attributes(state: params[:state])

  respond_to do |format|
    format.html { redirect_to tasks_path, notice: "Task updated"}
  end
end
```
- routes: add new "member" route to the parent resource
```rb
resources :tasks do
  member do
    put :change
  end
end
```

- view: add a `link_to` using PUT method & pass in state change to params
```rb
<%= link_to change_task_path(task, state: "open"), method: :put %>
```

## Clean up forms
- Task partial
- Font awesome icons for arrows

## Deploy
- Set production secret key base to ENV var (figaro)
- Heroku create
- git push heroku master
- Heroku run rails db:migrate 
