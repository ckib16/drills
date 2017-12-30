# Tiny Apps
Practicing Rails Chpt 1

## Start
```rb
rails new test_new_feature
cd test_new_feature
```

## 1 Model - todo app
```rb
rails generate scaffold todo title:string description:text
```
 
## 2 Models - blog
```rb
rails new test_new_feature
cd test_new_feature
 
rails generate scaffold post title:string description:text
rails generate scaffold comment description:text
```
## Finish

```rb
rails db:create
rails db:migrate
 
#Config root route in config/routes.rb 
root 'todos#index'
```