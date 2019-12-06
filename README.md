# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby '2.6.1'

* System dependencies

This  project should work on most machines

* Configuration

    ruby on rails backend
    sqlite 3 database
    bootstrap basics for css

* Database creation

    done with sqlite three. There is no seed data so you won't need to do anything other than a simple rails db:migrate in the terminal to get the program running

* Database initialization

* Deployment instructions

once you have cloned the repository all you need to do is this in order

```bundle install```

```rails db:migrate```

```rails s```

open up localhost:3000/login in your browser to begin

 * weekly planner


This is a weekly planner!

This is a very basic and barebones weekly planner that includes features with groups.

It includes basic authentication and authroization features

The plan's page is main page for the project, Most of the other pages allow you to redirect back to the plans page. The idea is you can make groups, join groups, make plans, and invite your groups.

on the plans index page you can make plans, edit plans, and cancel plans.

The plans index page simply shows yopu all the plans next to each other.

* primary scope.

I wanted to make something that would be suitable for small groups to make plans. The planner only stores data relevant to a week, and in future iterations I will make the databse wipe the plans clean at the end of each week. It's meant to be very simple and robust so it help you plan your week with minimal brain power.

All of the buttons work and you cannot visit any of the other pages without logging in.

All of the accounts, plans, and groups persist in the databse and it's free to use however you please.

* future plans.

First and foremost I'de like to get this project looking nicer, and I want the entire site to be more minimalistic. Currently you have to go to different pages to complete most of the functionality of the site, but ideally I just want a side-bar that obtains all of your group and plan options. Then you would simply have one extra page for your account and login.

on the plans page it will list all of the attending individuals and groups with color codes so you can easily see how many people are excited for each plan.


