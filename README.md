## Web Scrapper API | Ruby On Rails ![ROR](https://rubyonrails.org/images/rails-logo.svg)

This is a small application for experimentation with Ruby on Rails with sqllite DB. This application is able to scrap HTML tags from a web url and save it the database.

### To scrap content from a webpage
Send a `POST` request to `http://web-scrapper.vishalranjan.in/dumps?url=http://wwww.somewebsite.com`

#### To view all the content scrapped from all the webpages 
Send a `GET` request to `http://web-scrapper.vishalranjan.in/dumps`

#### To view all the content scrapped from a specific webpage
Send a `GET` request to `http://web-scrapper.vishalranjan.in/dumps?url=http://www.somespecificwebsite.com`


Here is how the data is being stored in the database.

| id  | url | tagtype | content
| ------------- | ------------- | ------------- | ------------- |
| 1  | `https://vishalranjan.in`  | h1 | Hi, I am Vishal |
| 2  | `https://vishalranjan.in`  | link | Vishal Ranjan |
| 3  | `https://vishalranjan.in`  | link | Projects |
| 4  | `https://vishalranjan.in` | link | Writings |
| 5  | `https://vishalranjan.in`  | link | About |
| 6  | `https://music.youtube.com/watch?v=bx1Bh8ZvH84`  | link | Privacy |
| 7  | `https://example.com`  | h2 | Example h2 |
| 8  | `https://example.com`  | h3 | Example h3 |




## API Description
1. `POST /dumps` - To scrap data from a website, just send a POST request to this API with address of url in the key of name url
`data  = {url=http://www.example.com}`

2. `GET /dumps` - To view list of all the data that the scapper has scapper till now, send a GET request to this API

3. `GET /dumps?url=http://www.example.com` - To view all the data scrapped for a particular website send a GET request to this API with url of the website in query params


## [Live demo here](http://web-scrapper.vishalranjan.in/)
 [![license](https://img.shields.io/github/license/mashape/apistatus.svg?maxAge=2592000)](http://mit-license.org/)


### Setup
* `git clone https://github.com/vishivish18/web-scrapper-api.git`
* Run `bundle install` from project directory
* Run `rails s` to start project and the magic begins on `localhost:3000`

### Dependencies

* `ruby 2.6.3` 
* `rails 5.2.3`
* `nokogiri 1..6.8`


### Contribution
Well this is kind of a learning project, feel free to fork it and happy hacking :)

### License
[MIT License](http://mit-license.org/)

Copyright (c) 2019 Vishal Ranjan
