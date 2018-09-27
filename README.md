# README

You are building an app to manage all the bees in the garden. Each bee can live in only one hive but work on different flowers. Flowers host many bees through flights. Hive and Flower migrations are set up for you

1. Create relevant migrations

2. Seed the database

3. Create routes, controllers and views according to the deliverables.

# Deliverables

* Create a join table between flowers and bees called flight

* /bees shows a list of names of all the bees, when clicking on an individual bee, the user is taken on a page to edit the bees details.

* On bee edit page, the user can input a bee's name, toggle if the bee is a queen or not and pick a hive for the bee. //Bees' names should be unique and present.

* /flowers shows a list of flower names, it has a link to a page which would allow the user to generate a new flower. When an individual flower is clicked it would take you to that flowers page.

* The page where a new flower is added should have a form which posts a new flower including the flower name, pollen content and allow to select all the bees who are on the flight to or from that flower. //Flower name must be present, pollen capacity must be a numeric value.

* Individual flower page should include the flower name, pollen capacity and list all the bees which have flights to that flower.
