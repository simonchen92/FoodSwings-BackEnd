# Capstone Project - Food Swings

## Back-End Application README

#### By: Simon Chen

## Links
* [Front-End GitHub Repo](https://github.com/simonchen92/FoodSwings-FrontEnd)
* [Deployed Front-End Client](https://simonchen92.github.io/FoodSwings-FrontEnd/)
* [Back-End GitHub Repo](https://github.com/simonchen92/FoodSwings-BackEnd)
* [Deployed Back-End API](https://secure-reef-19602.herokuapp.com/)

## Preparation

1.  Fork and clone this repository.
1.  Create a new branch for your work.
1.  Checkout to the branch that you have named.
1.  Install dependencies with `bundle install`.
1.  Run `bin/rails server` to run api on local.

## Description
Food Swings is a restaurant planner for individuals who just can't seem to keep track or remember restaurants they want to try in the future - so this application can do just that for you. You must create login credentials to access this application, but it is an application where you can create, read, update, delete your restaurant of your choosing by passing in the restaurant name, location (general location is fine), telephone number, and the cuisine/specialty of the restaurant. If you are lazy just like me - I have added a bonus feature of using the open source of [Yelp Fusion API](https://www.yelp.com/developers) to search for local restaurants in the area you input and from there you can add it directly to your list of restaurants to try.

## Technologies Used
* Ruby on Rails
* PostgreSQL
* Heroku
* Ruby
* Postman

### Authentication
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/`    | `users#changepw`  |
| DELETE | `/sign-out/`           | `users#signout`   |

### Restaurants
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/restaurants`         | `Restaurants#create`    |
| GET    | `/restaurants`         | `Restaurants#index`     |
| GET    | `/restaurants/:id`     | `Restaurants#show`      |
| PATCH  | `/restaurants/:id`     | `Restaurants#update`    |
| DELETE | `/restaurants/:id`     | `Restaurants#destroy`   |

## ERD (Entity Relationship Diagram)
![Imgur](https://i.imgur.com/P4qYnvH.png)

## Planning/Development Process
I began my project by mapping out my ERD (Entity Relationship Diagram) then proceeded to drawing my wireframe and wrote out my user stories to cater to what I would like to do with my application. Once all of this was done, I decided to go with building my back end API first so that I can work on the front end which I know would take more time. I decided to go with Ruby on Rails for my back-end and setting up the relational data wasn't hard since Rails have some neat built in functions like `scaffold` which literally maps all the routes for you (aside from some tweaks here and there to make it how you want to display the data on to the user). Once it was built, I decided to do some back end testing using a third party application called Postman. Once all the CRUD (Create, Read, Update, Delete) action was performed, I quickly began on the front-end.

I decided to go with React on my front end, since it was a topic that we cover for our last section of our immersive program and it was a popular framework that I always want to try to build with. I noticed that React provided a lot of versatility and control over the different section of the application that I wanted to build and it helped layer out the CRUD actions into seperate components. I made displaying all the restaurants first and then shortly after that I made showing a single restaurant so that I can update and delete that single resource whenever I feel like it. Once this was all done, I decided to move onto implmenting the Yelp API.

Implementing the Yelp API was by far the hardest tackle I had to challenge. I had to read multiple sources like Stack Overflow, Yelp Documentations, and published blog articles on how to implement the Yelp API. After all the trail and error, I finally got the data to finally send back to me and I had to refactor code on my end to help display the data that I wanted. 

Overall, this was by far the most fun project I had to work on. There was some learning curve to learn for React and implementing a third party API was challenging, but it made me find a newfound appreciation for applications that utilizes both of them.

## Future Iterations
- I would love to be able to create more sort methods for user so that they can sort the display data that the Yelp search returned back.
- Implement a Google API to visually display how far away the closest restaurants are and the distance it takes for them to get there
