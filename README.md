#members-only

This is a short project made for the [Authentication](http://www.theodinproject.com/ruby-on-rails/authentication) part of the Rails section of The Odin Project curriculum. The project is a messaging board whereby all posts can be viewed by anyone but only signed in users can see the posters' names. It includes the following features:
- a custom made authentication system based on `has_secure_password` and a `remember_token` stored in cookies and its irreversible digest stored in the database,
- two models (User and Post) and relations between them,
- some tests utilising RSpec, Capybara, FactoryGirl and shoulda-matchers.

To test drive the app, add new users and posts using the Rails console.