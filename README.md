# The News Room app
## Work in progress (Code overview)
This program sets the foundation for an app that library staff an visitors can use to get a better overview of library assets. At the moment the functionality for bullet points in bold are available. When the app is complete a user will be able to:

* **be assigned a library card with an account number**
* **view a list of all library books**
* **search a book by title**
* **search a book by author**
* checkout book (if book is available to checkout, or else error message)
* upon checkout the book will get assigned a return date
* view a return date for books currently checked out
* view checked out books in user account
* return book to the library
* send a message if book has passed its return date

<img src="./Assets/library.jpg" width="400" height="200">

# User stories
*The app has been built with four requests in mind. These are the user stories of our customer.*

**Show a list of all books**<br>
As a user<br>
In order to check out a book<br>
I want to see a list of books with title and author

**Show book availability**<br>
As a library<br>
In order for visitors to check if a book is available or not<br>
We need a list that shows available books 

**Make possible to check out book**<br>
As a library<br>
In order for visitors to check out books<br>
We need an app for them to access the list of books

**Make possible to see checked out book's due date**<br>
As a visitor<br>
In order to return the books within a month of checkout<br>
I need an app that shows the date it is due

## Dependencies
| Ruby | Gems: Rspec, Pry-ByeBug | Yaml |

## Setup
To access this code visit [GitHub](https://github.com/kfrostare/library-challenge) repo and complete the following steps:

1. Fork the repo and clone
2. Have Ruby and Gem bundler installed
3. Utilize IRB to run program

## Instructions
Instructions for running in IRB.

**Library card** | Generates a new library card ID 

        Library card = User.new
*This will assign you a brand new user ID and show you the book list of currently borrowed books (0)*

## Acknowledgements
The material has been provided by [Craft Academy](learn.craftacademy.co) <br>
The app is being created in [Ruby](rubymonstas.org) <br>
The app is being tested in [Rspec](rspec.info) <br>
We would like to thank [Kayla Woodbury](https://github.com/kaylawoodbury) for helping us with the Ruby/Yaml- connection

## Updates/Improvement Plans
There will be updates to this software shortly.

## License
MIT License








# The Little News Room
**Week 6 of learning how to code.** Building a platform for a little blogbasic BMI-calculator that lets you know if you are normal, over- or underweight. Testing functions with Cypress and launching with GitHub. [View the BMI-calculator live through GitHub](https://kfrostare.github.io/BMI_repo/)
*More information below the image.*
![The BMI Calculator](src/assets/css/bmicover01.jpg)
### Assignment
**Make sure the user can:**
* Enter weight
* Enter height
* Press calculate- button
* View a message
### Programs practiced in this challenge
* **Coding**
: | JavaScript | Html | Css |
* **Testing**
: | Cypress | Yarn |  
* **Launching**
: | GitHub |
* **Other**
: | VSCode | Git |
## Build, test and launch
* Built with the source-code editor [Visual Studio Code](https://code.visualstudio.com/)
* Tested with [Cypress](https://www.cypress.io/); the Js End to End testing framework
* Launched using [GitHub](https://github.com/); the world's leading software development platform
## Authors
* **Karolina Frostare** has built this application
* **[Craft Academy](https://www.craftacademy.se/english/)** has created this challenge and provided the learning material needed to accept it
## Acknowledgments
* The image used was (royalty) free and provided by [Pixabay.com](https://pixabay.com/)
* This assignment was provided by [Craft Academy](https://www.craftacademy.se/english/)
```



















# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

As a visitor,
when I visit the application's landing page,
I would like to see a list of articles

As a publisher
In order to keep my content accurate
I would like to be able to edit my articles

https://www.youtube.com/watch?v=Dtcp3mJznCw
https://www.youtube.com/watch?v=xbW4K3h8hRU&list=PLRtV6ODziifub4Eav114vhu0BGypwCLph&index=3&t=351s edit and deleting blog entries (barbietechfabulous)
https://guides.rubyonrails.org/getting_started.html#updating-articles 