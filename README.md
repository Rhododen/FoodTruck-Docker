# FoodTruck-Docker
Source code was cloned from https://github.com/prakhar1989/FoodTrucks

Foodtruck is a web application that allow users to find food trucks near their current location or search for food tracks.
The app's backend is written in Python (Flask) and uses Elasticsearch to search.

This is the official image for Elasticsearch - docker.elastic.co/elasticsearch/elasticsearch:6.3.2
The food truck image was built using python:3.8 as base image

For the Elasticsearch and our image to communicate, a bridge network was created with the command below:

``` docker network create foodtrucks-net ```


