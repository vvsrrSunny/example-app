## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Prerequisites](#prerequisites)
* [Setup](#setup)

## General info
This project migrates the business data provided in CSV to the database tables and presents it to the users with an interactive UI. Users can also apply multiple filters on to the table and get an interesting and valuable data. 
	
## Technologies
Project is created with:
* tailwind CSS: 3X
* laravel: 9X
* php: 8.0.9
* Mysql: latest (we used docker container)

## Prerequisites
* Docker  

## Setup
To run this project:

* Pull this git project from master branch, or if you already have this project the use it (if using xammp then pull the project in htdocs folder)
* In the root folder of the project, create the .env file or edit if exists. Provide database name, user name, and password of the database in the .env file that matches the database name, user name, password, and host name (you can find them in the docker-compose.yml file at mysql service). 
* Make sure the docker is up and running
* From the root folder, enter into the docker folder
```
cd docker
```
* Up the docker containers so that ngnix, php, mysql, composer, npm, artisan will run and will be avaliable 
```
docker-composer up -d
```
* Install the laravel application using composer 
```
docker run --rm composer install
```
* Run the below command to migrate the tables in to the database
```
docker run --rm artisan migrate
```
*  Now migrate the CSV file to database by the below command 
```
docker run --rm artisan db:seed
```
* try this for seeding if the above command could not run
```
docker run --rm artisan migrate:fresh --seed
```
* Get the frontend dependencies by the following command
```
docker run --rm npm install
```
* Run the backend server 
```
docker run --rm atrisan serve
```
* Run the frontend vite server
```
docker run --rm npm run dev
``` 
Your aplication is ready to use!


