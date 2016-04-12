# Colabora API
Author: Hector Huertas

Colabora API is the backend of Colabora, a team collaboration tool.

*Add link to live api url once deployed*

*Add link to live ember client once deployed*

## Colabora Overview

Colabora is a team collaboration tool that facilitates online meetings. It is a learning project that combines a Phoenix Framework backend with an Ember.js client.

The first goal is to have both parts working together on a production environment providing CRUD functionality for meeting notes.

After achieving the minimum viable product, the project will be progressively enhanced with more features such as authentication, polished UX, real-time group edition, user groups and more.

## Colabora API Goals & Checkpoints

* Pure backend API. Since this part of the project does not need any user interface, the Phoenix app was created without html support and without brunch, the asset building tool. To achieve this the app was generated using `mix phoenix.new colabora_api --no-html --no-brunch`.

* No scaffolding. To maximize learning, no phoenix generator helpers will be used.

* Reasonable testing. The goal is to learn how to test most things, without digging into advanced techniques.

* Follow [jsonapi.org](http://jsonapi.org/) standard for the API formatting. Reason is both good practice and to ease Ember.js integration.

* Provide easy and documented deployment. Provide mix tasks when needed, and keep good documentation of any steps needed to deploy the full working app.

## Deployment

To start Colabora API:

  * Install dependencies with `mix deps.get`
  * Setup the database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Want to deploy to production? Please [check Phoenix Framework deployment guides](http://www.phoenixframework.org/docs/deployment).
