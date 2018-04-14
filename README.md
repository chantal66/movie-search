# README

## Code Challenge 

> Using Ruby on Rails and a public API of your choice:
>* Create a page where a public user can do a keyword search and view results. 
>* Have a sidebar that shows past searches anyone has done, with a count of how many times it has been run. 
>* Clicking on a past search should run it again.
>* Ensure that:
>*      Search history only shows unique searches
>*      Search history is sortable by date/count/searchterm
>*      Performing a search displays past information about that search (list of all the previous times that term was searched)


## Setup

Clone the repo in your terminal:
```
$ git clone https://github.com/chantal66/movie-search
```
Navigate to the project with:
```
$ cd movie-search
```
```
$ bundle install
```
```
$ rake db:create 
$ rake db:migrate
```
```
$ rails s
```
``` 
Visit http://localhost:3000/
``` 
## Stack and Gems
Ruby 2.4.1, Rails 5.1.6, Postgresql ,Faraday, Figaro, RSpec, Capybara, VCR and Webmock, Bootstrap
 
API => [The Movie DB](https://www.themoviedb.org/)
## Author

[Chantal Justamond](https://github.com/chantal66)