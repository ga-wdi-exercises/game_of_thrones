# Houses of Westeros

When you play the Game of Rails, you win or you die.

You'll be making a Ruby on Rails app connecting Game of Thrones characters to their respective houses. Implement **full CRUD functionality** on the models.

We will start off with two models: `Houses` and `Characters`. Houses have many characters.

## Models and Migrations

- Create an ERD for your `houses` and `characters` tables
- Create corresponding models and migrations
- Create seed data that generates some houses and characters

> Use [this](http://gameofthrones.wikia.com/wiki/Game_of_Thrones_Wiki) if you need some source material for your seed file. Or just make up some names!

## Views and Controllers

- Add views and controllers.

## User Authentication

Once you have completed all of the above and implemented full CRUD functionality for Houses and Characters, add a third User model using Devise.

- You should be able to sign up, sign in and sign out of the app
- Only logged-in users should be able to create a House or Character
- A user can only update or delete a House or Character he/she created

> Think about what associations you will have to set up in order to implement these features

## Bonus

- Add a third model for quotes associated with a character.
- Try out many-to-many relationships with Categories to label Characters. A Character can have many Categories (e.g., "merciless") and a Category can be associated with many Characters. A Tag model/table could be helpful here...
