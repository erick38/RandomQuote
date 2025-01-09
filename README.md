# sinatra-template

Use this repository to create new Sinatra apps. 

Optionally, to use `ActiveRecord` for database operations, add to the `app.rb`:

```ruby
require "sinatra/activerecord"
```

And in the `config/environment.rb` file add this code block:

```ruby
configure do
  # setup a database connection
  set(:database, { adapter: "sqlite3", database: "db/development.sqlite3" })
end
```
# Random Quote of the Day

## Description
This is a simple web application that displays a random quote every time the page is loaded. 

## Features
- Fetches quotes from [Quotable API](https://github.com/lukePeavey/quotable).
- Styled with CSS for a clean and responsive look.

## Usage
1. Clone the repository.
2. Run `bundle install` to install dependencies.
3. Start the server using `ruby app.rb`.
4. Open `http://localhost:4567` in your browser.

## Technologies Used
- Ruby with Sinatra framework
- CSS for styling
- Quotable API for fetching quotes

## Future Enhancements
- Implement a "Quote of the Day" logic to show one quote per day.
