First, we need reviews! These are progressive so you don't need to implement them all once.

Small PRs for chunks of functionality. Could just be a backend change.

Remember, checkout a branch

`git checkout -b adding_reviews_to_books`

Implement a small piece of functionality and push that to github and make a PR against your own `main` branch.

*User Story 1:*

I want to be able to click on "Read Reviews" and go to a page of reviews for the book. On that page I want to be able to read reviews and also submit a review.

*User Story 2:*

I want to be able to write a review for a book that contains text, my name, and a number rating between 1 and 5 stars

*User Story 3:*

When I go to a page of reviews for a book, I want to see the average rating of stars from all the reviews for that book.

*User Story 4:*

I want to be able to see the first paragraph of each review made for the book, and be able to expand any review that is larger than one paragraph

(and or any UX you find nice for this page - our key tasks are to be able to submit reviews, see reviews, and see the avverage rating of all reviews)

*Stretch Goal #1:*

Be able to sort reviews by rating so you can see the highest rated or lowest rated reviews first

*Front end stretch goal*

You can absolutely do this with rails routes and load a page with every request, or you could make it reactive.

In the olden days (5 years ago) we would do that with partials and UJS - now there's better tools, from stimulus to stimulus_reflex and hotwire to little and big JS frameworks

You will still need the actions to return what you want either in a rails controller or in a service, but maybe you don't need to make the request for those objects by loading a whole new page

## Questions to think about and implementation details

Don't try to implement the back-end and front-end all at once. You can implement the back-end and then build on top of it or even build a front-end with fake objects and then figure out how to get them there

On the backend:

* How is a book related to a review?

* What fields do you need to store for a review?

* Where should the logic live for calculating the average rating of a book

(one at a time! the first thing you need is a book to have reviews!)

If you are stuck there is a branch called reviews-tests that will give you failing tests that you can make pass for the models (we won't focus a ton on testing here, because it can be overwhelming to also learn how rspec works, but testing will be part of any app you work on)

And if you are really stuck or want to see another solution, there is a branch called reviews-full with a full implemention (okay, almost full - you'll still have to figure out how to make a new review yourself, and make it look nicer!)

But for at least a day, allow yourself to be stuck and play. An error message doesn't mean anything bad! Just that Rails doesn't know what you want it to do yet.
