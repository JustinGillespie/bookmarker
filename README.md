Bookmarker by Push
=======

A ruby application that provides both a CMS for links and an API available by private key (see workflow notes).

Developer Setup
---------------

*note: the following instructions assume ruby 2.0+, postgres and rails 4.0+ have been installed on your local development machine*

0) Install dependencies using bundler

    bundle

1) Start server

    rails s

This application defaults to a Postgres setup. To change it to another database, edit the `config/database.yml` file.

2) Start/Stop Postgres on Mac OSX

    pg_ctl -D /usr/local/var/postgres -l logfile
    pg_ctl -D /usr/local/var/postgres stop -s -m fast
    

Workflow Notes
--------------

**Current API Key: 81b65f696455e4f69e5b89243c4db30a**

To generate a new API Key from terminal:

	heroku run rails console
	ApiKey.create! to generate new key

Example Authenticated CURL Request:

	curl https://vast-chamber-2812.herokuapp.com/api/bundles -H 'Authorization: Token token="81b65f696455e4f69e5b89243c4db30a"'

Links
-----
* <https://vast-chamber-2812.herokuapp.com/>
* <https://vast-chamber-2812.herokuapp.com/api/bundles>
* <https://vast-chamber-2812.herokuapp.com/api/tags>
* <https://vast-chamber-2812.herokuapp.com/api/tag/foo>




