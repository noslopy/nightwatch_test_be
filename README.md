# Senior test assignment for Nightwatch

* language: ruby 💎
* framework: rails 🛤️
* description: [here](https://github.com/noslopy/nightwatch_test_be/files/5477712/Full-stack.developer.test.assignment_.Expert.Advice.pdf) 📖

This repository is a Rails 5.2. application, configured as a pure API. It supports users, user accounts, signups and logins via the users endpoint. Authentication is set up with Doorkeeper. Database is Postgres.

This API is specially designed to work with Ember on the front-end: requests and responses are conformed to JSON:API.

To run the application, use the following commands:

```
bundle
rake db:create db:migrate db:seed
rails s
```

