<h1 align="center">MoodyTunes :notes:</h1>
<h3 align="center"> A Ruby CLI Application inspired by Spotify Music App.</h3>
<h4 align="center">
  <sub>Built by
  <a href="https://github.com/saimaar">Saima Rahman</a> and
  <a href="https://github.com/rexy91"> Rex Ye</a>
  </sub>
</h4>
<p align="center">
  <img style="margin-left:10%" width="90%" height="60%" src="ezgif.com-video-to-gif.gif">
</p>

In this project we used knowledge of plain <code>Ruby</code>, <code> Active Record Associations </code>, and database management.

## Features 
- Animated Welcome, with Music Audio in the background
- User can Sign up/Sign.
- Includes prompts for Users to:
  - Add Music to their playlist.
  - Select a Mood and play songs.
  - Remove song from the playlist 
- User can update username.
- User can view their playlist


## Tech Stack
This web app makes use of the following:
- Ruby [2.6.1]
- SQLite3 [~> 1.4] - Database
- Sinatra-activerecord - Gem that extends Sinatra with ActiveRecord helper methods and Rake tasks

## Fun Gems ♥
- `faker` - randomly generated seed data fun
- `colorize` - colored text output in your terminal
- `lolcat` - enabling rainbow text coloring
- `tty-prompt` - nice interface for prompting for user input
- `figlet` - different positioning properties and color properties with the help of other gems

## Setup
- Clone this repo to your local machine `git clone <this-repo-url>`
- run cd `MoodyTunes`, to access the project
- run `bundle install` to install required dependencies
- run `rake db:migrate` to create tables into the database
- run `rake db:seed` to create seed data
- run `ruby bin/run.rb` to run the app

