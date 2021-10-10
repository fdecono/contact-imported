# README

## Table of Contents

- [Main Characteristics](#main-characteristics)
- [Gems](#gems)
- [Getting Started](#getting-started)
- [Final Comments](#final-comments)

## Main Characteristics

- Language: Ruby 3.0.0
- Framework: Rails 6.1.4
- Webserver: Puma
- Test Framework: RSpec
- Database: Postgres

## Gems

#### Devise

I used [devise](https://github.com/plataformatec/devise) for authentication. The user can sign_up, sign_in, sign_out using Devise's interface. Only `email` and `password` are needed.

#### Pagy
I used [pagy](https://github.com/ddnexus/pagy/blob/master/lib/config/pagy.rb) to paginate the index views.
For those endpoints that need pagination, you should add on the controller method, for example:

```ruby
@pagy, @records = pagy(User.all)
```

And in the corresponding view:
```ruby
<%== pagy_nav(@pagy) %>
```

## Getting Started

1.  Make sure that you have Rails 6, PostgreSQL, git cli, and bundle installed.
2.  Clone this repo using `git clone https://github.com/fdecono/contact-imported.git`
3.  Run `bundle install`
4.  Run `bundle exec rails db:create`
5.  Run `bundle exec rails db:migrate`
6.  Run `bundle exec rails db:seed`
7.  Check the test are passing running `bundle exec rspec`
8.  Run `bundle exec rails s` and in your browser navigate to `http://localhost:3000`
9.  You will be able to log in to the App using the following credentials: <br>
    _`email: test@user.com`_ <br>
    _`password: password`_ <br>
    Or you can sign_up with the credentials you desire.
10.  Once you are logged in, click the `Choose File` button and select the `csv_contact_list.csv` file at the root of this project. Click the `Import Contacts` button.

## Final Comments

- I was not able to complete the whole assignment, though I tried to end up with a functioanl app, which serves the purpose of importing contacts from a .csv file.
- Regarding the validations, as I could not code them all, at least I wanted to have some of them working.
- It did not find the IIN explanation of the credit cards to be cristal clear , therefore I made a slight modification to the way that attribute is loaded.
- I am not used to using the rails views, most of my coding in RoR has been building APIs, using [ActiveModelSerializers](https://github.com/rails-api/active_model_serializers) and rendering jsons for the frontend to consume. This delayed me quite a bit, but it was a lot of fun reading the docs and applying them to my code! I learnt a few things today, thanks!
