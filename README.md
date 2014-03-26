capistrano_upload_files
=======================

I will add the task of file upload to capistrano3.
This project rocks and uses MIT-LICENSE.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano_upload_files'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano_upload_files

## Usage

Add this line to your application's Capfile:

    require 'capistrano_upload_files/upload_files'

execute cap command

    $ cap deploy:upload_files FILES=config/database.yml
