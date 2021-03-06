[![BCH compliance](
  https://bettercodehub.com/edge/badge/jaywayawyaj/chitter-challenge?branch=master
  )](https://bettercodehub.com/) [![Maintainability](https://api.codeclimate.com/v1/badges/f5f7686d071d8ffa6f9d/maintainability)](https://codeclimate.com/github/jaywayawyaj/chitter-challenge/maintainability)

# Chitter Challenge
My attemp at Makers Academys Chitter Challenge. For a full description of the challenge, see 'APPENDIX' below.

![screenshot](https://github.com/jaywayawyaj/chitter-challenge/blob/master/public/Screen%20Shot%202019-01-13%20at%2023.39.39.png)

## Instructions for users

Note that you will need postgreSQL installed.

```
$ git clone github.com:jaywayawyaj/chitter-challenge.git
Navigate to chitter-challenge
$ bundle
$ createdb chitter_development - creates a database
$ createdb chitter_test- creates a database specifically for testing
$ rake db:auto_migrate - creates tables in your development
$ rake db:auto_migrate RACK_ENV=test - creates tables in your test database
$ rackup
Visit 'http://localhost:9292/' in a web browser
```

### Usage

##### Technologies used
- Ruby
- Sinatra
- PostgreSQL
- DataMapper
- BCrypt

##### For Testing
RSpec
Capybara
##### Running tests
Run rspec

100% test coverage.

##### Linter
Rubocop

0 Offences

### Notes
I really struggled to get into this project, despite being quite excited about it prior to starting. I didn't put enough time or thought into it and I think that the is reflected in the app. The basic functionality is there but there are various areas which I would like to improve. These include:
- edit and delete buttons for peeps
- tags attached to peeps
- author attached to peeps
- ability to respond to peeps
- viewing all peeps with the same tag
- email alerts
- replying to peeps
- better css styling


# APPENDIX

Chitter Challenge
=================

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use Google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Challenge:
-------

As usual please start by forking this repo.

We are going to write a small Twitter clone that will allow the users to post messages to a public stream.

Features:
-------

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

Technical Approach:
-----

This week you integrated a database into Bookmark Manager using the `PG` gem and `SQL` queries. You can continue to use this approach when building Chitter Challenge.

If you'd like more technical challenge this weekend, try using an [Object Relational Mapper](https://en.wikipedia.org/wiki/Object-relational_mapping) as the database interface.

Some useful resources:
**DataMapper**
- [DataMapper ORM](https://datamapper.org/)
- [Sinatra, PostgreSQL & DataMapper recipe](http://recipes.sinatrarb.com/p/databases/postgresql-datamapper)

**ActiveRecord**
- [ActiveRecord ORM](https://guides.rubyonrails.org/active_record_basics.html)
- [Sinatra, PostgreSQL & ActiveRecord recipe](http://recipes.sinatrarb.com/p/databases/postgresql-activerecord?#article)


Notes on functionality:
------

* You don't have to be logged in to see the peeps.
* Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
* The username and email are unique.
* Peeps (posts to chitter) have the name of the maker and their user handle.
* Your README should indicate the technologies used, and give instructions on how to install and run the tests.

Bonus:
-----

If you have time you can implement the following:

* In order to start a conversation as a maker I want to reply to a peep from another maker.

And/Or:

* Work on the CSS to make it look good.

Good luck and let the chitter begin!

Code Review
-----------

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
