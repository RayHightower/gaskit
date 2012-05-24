# Gaskit

Gaskit a git-backed issue tracker. It uses a branch in your local git database to store the tickets.

![Screenshot of Gaskit](http://f.cl.ly/items/270D3l0p1Q1Y1e0h1w1I/Screen%20Shot%202012-04-21%20at%209.26.15%20AM.png)

## Installation

Install the gem and run the executable from within a git repository.

    $ gem install gaskit
    $ cd ~/path/to/your/project
    $ gaskit

Now open your browser to [localhost:8080](http://localhost:8080).

## Current Status

Gaskit was created as a proof of concept for using Git as a database for an application. To see what else needs done to make it production-ready, clone the repo, checkout the gaskit branch, and run the app:

    $ git clone git://github.com/bkeepers/gaskit.git && cd gaskit`
    $ git checkout -b gaskit origin/gaskit

## Running the app

    $ bundle install
    $ bundle exec rackup
