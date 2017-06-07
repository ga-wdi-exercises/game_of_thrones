# Houses of Westeros

When you play the Game of Rails, you win or you die.

You'll be making a Ruby on Rails app connecting Game of Thrones characters to their respective houses. Implement **full CRUD functionality** on the models.

You will start off with two models: `House` and `Character`. Houses have many characters. Characters belong to a single house.

The styling of the app is completely up to you. With that said, a cool GoT-themed font has been included in this repository for you to integrate if you choose. To use it, add the following to `application.css`...

```css
/* assets/stylesheets */
@font-face {
  font-family: "thrones";
  src: url('game_of_thrones.ttf') format("truetype");
}

/* assets/fonts */
@font-face {
  font-family: "thrones";
  src: font-url('game_of_thrones.ttf') format("truetype");
}
```

## Models and Migrations

- Create an ERD for your `houses` and `characters` tables
- Create corresponding models and migrations
- Create seed data that generates some houses and characters

> Use [this wiki](http://gameofthrones.wikia.com/wiki/Game_of_Thrones_Wiki) or this [diagram](http://3.bp.blogspot.com/-w7EWwY4aLaw/UEjPybySOmI/AAAAAAAADRA/F7kZGZGNfPg/s1600/games-of-thrones_a-visual-guide-to-the-faces-of-season-1.jpg) if you need some source material for your seed file. Or just make up some names!

## Views and Controllers

- Add controllers and views so that both of your models have full CRUD functionality
- Add styling to your app by adding / modifying stylesheets in `app/assets/stylesheets`

## Bonus: User Authentication

After -- **and only after** -- you have completed all of the above and implemented full CRUD functionality for houses and characters, implement a third `User` model with Devise.

- You should be able to sign up, sign in and sign out of the app
- Only logged-in users should be able to create a house or character
- A user can only update or delete a house or character he/she created

> Think about what associations you will have to set up in order to implement these features...

## Some More Bonuses

- Add a third model for quotes associated with a character
- Create a `Category` model that has a many-to-many relationship with `Character`. A character can have many categories (e.g., "merciless") and a category can be associated with many characters. A `Tag` model/join table might be helpful here...
- Create an admin role (i.e., somebody who can update/delete anything) using [CanCanCan](https://github.com/CanCanCommunity/cancancan). [This lesson plan](https://github.com/ga-wdi-lessons/cancancan) may come in handy.
- Add a combat mode using custom routes and controllers that pits two characters against each other. Only one can survive! The logic that determines who wins is up to you. Models are not necessary for this feature, but certainly could be used to implement it.
