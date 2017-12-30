# Build My Own Apps
Practicing Rails Chpt 2

## Steps
1. Take a small, core feature of the app
2. Imagine 1 simple thing someone could do
3. Sketch: screens for that core feature
5. List:
  - models = resources (objects & attributes), forms & content on page
  - views = screens
  - controllers = collections of views related to a model/resource
4. Sketch + List -> failing integration test (capybara) describing the path the user would take
5. Write failing unit tests (rspec)
6. Get each unit test to pass
7. Repeat 5&6 until whole integration test passes

Repeat for the next feature

## 3 Phases of Test Writing
- Arrange: set stuff up
- Act: do something
- Assert: make sure what you expected actually happened
  - DON'T use same logic, method in both Act & Assert

Blend this with "Testing Rails" leanpub book