

# Ruby on Rails Voting Website




https://user-images.githubusercontent.com/86654131/197827158-7ad0b8d8-553f-4fb1-97dd-e02e1b92ecdc.mp4



This is a ruby on rails app that allows organizations to conduct secure voting

### Live demo: [Vote In Website](https://trance-vote-in.herokuapp.com/)


## Built With

- Ruby
- Ruby on Rails
- Terminal
- IRB
- Rubocop (linters)
- Devise



## Getting Started

To get a local copy up and running follow these simple example steps.


## Pre-requisites
Make sure you have Ruby and Rails installed on your computer. If not, you can follow this [tutorial](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project) to install them.

If you don't have PostgreSQL installed, you can follow this [tutorial](https://www.postgresql.org/download/) to install it.

If you don't have yarn installed, you can follow this [tutorial](https://classic.yarnpkg.com/en/docs/install/#debian-stable) to install it.
  
## Usage
In your terminal, navigate to your current directory and run this code

`git clone https://github.com/maerih/Voting-System.git`

Then run

`cd voting_website`

Open the project in your favorite code editor. `code .` for VS Code.

  - Use the command `bundle install` or just simply `bundle` to install all project dependencies.
  - Run `rails db:create db:migrate` to create the database and run migrations.
  - You might need to supply a username and password for your PostgreSQL database if you run into an error with the previous step.
  - Simply navigate to `config/database.yml` and add your username and password to the `username` and `password` fields.
  - Type in the terminal `rails s` to start the server then click on `http://127.0.0.1:3000`
  - Enjoy your Friends List App!
  
  Have fun storing new recipes, creating and viewing grocery list and of course from your recipes, creating delicious meals!



## Testing

   Within the projects working directory run test using the following command:
  `rspec` in the terminal







## 📝 License

This project is [MIT](LICENSE) licensed.
