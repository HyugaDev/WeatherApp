# SocialCrowd Project 1: Weather Data Processor

This is a console based ruby application which generates weather data of cities and displays data after date_range filteration given by user through input prompts.

## Functionality

- Cities weather data will be generated first time automatically by the application at startup. (to add more cities you can update config file)
- User can select cities from the list of cities given at the start of the application.
- User can filter temperature, humidity and windspeed data by giving date ranges.

## Getting Started

To get started, please follow the instructions below:

1. Clone the repository from the github by following command

```
git clone https://github.com/HyugaDev/WeatherApp.git
```

2. Navigate to the project directory using your command prompt or terminal.

3. Run the command `bundle install` to install all necessary dependencies.

## Tech Stack

The tech stack used to build backend is:

- Ruby on Rails - a web application framework written in the Ruby programming language

## Dependencies

The following dependencies are required to run backend:

- Ruby 3.1.2

## Installation Guide

> #### Install [RVM](https://rvm.io/rvm/install)
>
> Install the right ruby version (currently 3.1.2):

```shell
  rvm install "ruby-3.1.2"
```

> #### Check your Ruby version

```shell
  ruby -v
```

The ouput should start with something like `ruby 3.1.2`

## Running up the App

```sh
ruby app.rb
```
