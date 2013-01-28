# Remote for Beamer


## Overview

**Remote for Beamer** provides a web interface - especially designed for mobile browsers - to navigate through your video files and open them with [Beamer app for OSX](http://beamer-app.com/).

### DISCLAIMER
***- This a [POC](http://en.wikipedia.org/wiki/Proof_of_concept) version, ugly code without automated tests!***

***- Don't use it on an untrusted network. The are many security bugs!***

### How to use


#### Pre-requisites

* OSX
* [Beamer app](http://beamer-app.com/) installed
* Ruby 1.9.3
* Rubygems

#### Setup

* clone this repository
* $ bundle install

#### Starting the web server

* $ thin start -p4321


#### Accessing

* From any browser in the same network: http://your.host.ip:4321

### Improvements?

Maybe. Feel free to fork and contribute.

