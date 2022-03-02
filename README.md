# README

## up and running

Fork this repo to your own github and then clone it to your computer.

You'll need to have Ruby version 3.0.3 installed with your ruby version manager (rbenv, rvm, etc) as well as postgres.

Alternately, there is a Dockerfile if you are comfortable with container based development, but if you aren't, forget it is there!

## Rails 7!

This is using the brand spanking new release of Rails 7. Go ahead and do `bundle install` and `yarn install` and make sure all the dependencies install correctly.

Create and seed your database (check `seeds.rb` if you want to see how they are created)
- `bundle exec rake db:setup`
- `bundle exec rake db:seed`

To run a dev server that it automatically compiling JS/CSS and running Puma the new command is `bin/dev` instead of `rails s`

## Up and running?

Once you are up and running you should see something like this

![screenshot](https://p198.p4.n0.cdn.getcloudapp.com/items/o0uZy1zn/b39801ad-a4df-41b5-85c8-24273f20a2c2.png?source=viewer&v=690676fba904766e5bf3a518d4d16a19)

Try not to laugh at my amazing front-end design

## Learning Time!

You have been hired as the one and only full stack developer for a startup that is creating a book rating and sharing system (they see Goodreads and think they can do better!)

There is a folder in this repo called "User Stories" in which you'll get a sense of how tickets might come in written by a product team. There may also be variations on whether you want to focus more on the back-end or front-end learning. And they'll be some supplemental reading and resources for you listed in each one as well.

It is one thing to try to understand Ruby and Rails from an abstract perspective, and another to dig in and build features. I hope having to implement something yourself will both bring you the excitement of seeing something exist that didn't exist before you created it, and lead you to the places in which you can dig into the unknowns in small steps. What do I need to know to do /this/ right now?
## Good documentation links

Tailwind CSS (CSS framework)
https://tailwindui.com/

Daisy UI (free component library)
https://daisyui.com

Rails 7 docs
https://guides.rubyonrails.org/
