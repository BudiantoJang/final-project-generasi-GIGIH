# GIGIH Family Catering

This is a project that I made in order to fullfill the final project task given from Generasi GIGIH team

## Study Case 
Mr. Gagah and Mrs. Guhuh are Gigih's parent. They are running a catering business over the years and making their data by book. As a good son, Gigih wants to help his parent to make his parent's business prosper. Gigih plans to create an application for his parent to track and save the business record with the help of a software engineer
## Initialiation

Things that you need in order to run this application:

* Ruby version -- 3.1.1

* Rails version -- 7.0.2 ~> 7.0.2.3

## Usage

Make sure to run bundle install in your shell / bash
```bash
    bundle install
```

After bundling the gems that need to run the application, you can seed the dummy data that I have made by using db:seed command

```bash
    rails db:seed
```
The dummy data has been loaded and the server is ready to be launched. you can start the server locally or even with the help of online based IDE by using command

```bash
    rails server
```

## Validations

* presence = prevent empty data records
* uniqueness = prevent have duplicate values
* format: { with: URI::MailTo::EMAIL_REGEXP } = make sure email have correct format
* length: {maximum: 150} = limiting data to 150 characters long
* numericality: {greater_than: 0.01} = make sure thed data is integer or float and make sure its greater than 0.01


<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://www.w3schools.com/css/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original-wordmark.svg" alt="css3" width="40" height="40"/> </a> <a href="https://git-scm.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/> </a> <a href="https://www.w3.org/html/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original-wordmark.svg" alt="html5" width="40" height="40"/> </a> <a href="https://rubyonrails.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/rails/rails-original-wordmark.svg" alt="rails" width="40" height="40"/> </a> <a href="https://www.ruby-lang.org/en/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/> </a> <a href="https://www.sqlite.org/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/sqlite/sqlite-icon.svg" alt="sqlite" width="40" height="40"/> </a> </p>

