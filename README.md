## Process

### Setup
1. Create Gemfile + run `bundle`
2. Create migrations: run `rake db:create_migration` and add the syntax you need (e.g. NAME=create_users)
3. Migrate: run `rake db: migrate`
* **REMEMBER** never ever ever change anything in schema.
4. Go to .bin/run.rb and change the name of the app on line 3
5. Go to ./app/models and change the names of the files (e.g. User.rb <- singular) and the class names inside
6. Set up associations in classes (belongs_to / has_many / has_many through:)
7. Create seed data + run `rake db: seed`
* remember: seeding does not give you any output so no news on your console == good news
8. Check if you've seeded correctly: run `rake c` and check what's the last instance of any of your class 
9. Go to ./app/yourAppName.rb and change that file's name and whatever is inside (the class name should correspond to what you wrote in .bin/run.rb on line 3)

## Fun Gems For Your Projects
- `faker` - randomly generated seed data fun
- `colorize` - colored text output in your terminal
- `lolcat` - enabling rainbow text coloring
- `tty-prompt` - nice interface for prompting for user input
- `figlet` - different positioning properties and color properties with the help of other gems

