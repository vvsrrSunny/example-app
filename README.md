## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Prerequisites](#prerequisites)
* [Setup](#setup)

## General info
This project has two objectives. One is to serve as a prsonal website and other, this project is properly dockerized. The other is this project can be futher developed with out any installations. Just installing docker is enough, we can have access to `npm`, `artisan` and `composer` commands using containers.  
	
## Technologies
Project is created with:
* bootstrap: 5.1.3
* sass: 1.49.9
* laravel: 9.2
* php: 8.0.9
* Mysql: latest (we used docker container)

## Prerequisites
* Docker (install docker)  

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


