# Image Scraper

This simple web app scrapes all the images from a webpage and identifies the largest image.

Video Demo: [https://youtu.be/FijVBlnDzfc](https://youtu.be/FijVBlnDzfc)

## Tech Stack

- Ruby on Rails
- ActiveJob + DelayedJob - to run image scraping in background
- FastImage - to compute image dimensions
- sqlite3 - can be substituted with any relational database
- Bootstrap

## Get started

```
# install dependencies
bundle install

# set up database
rails db:create db:migrate

# to run web server
rails serve

# to run background tasks
bundle exec rake jobs:work
```

## How it works

1. You enter an URL to scrape
2. This creates a `Scrape`. In `scrape_controller.rb`, a background job is triggered to scrape all of that URL's images.
3. We fetch the HTML for that webpage, extract all the image URLs, and create an `Image` in the database for each one
4. Each `Image` has an associated `image_url` and a size, which is computed by multiplying the image's width and height (which we get using FastImage)
5. The `Scrape` model has a method that returns the scrape's largest image
