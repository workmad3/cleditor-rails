# Cleditor::Rails


Integrates CLEditor into Rails 3.1+ asset pipeline

Url: http://premiumsoftware.net/cleditor/

## Installation

Add this line to your application's Gemfile:

    gem 'cleditor-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cleditor-rails

## Usage

1.) Run

    $ rails g cleditor:install

2.) Add this to your application.js
    
    $(document).ready(function() {
        $("textarea").cleditor();
    });

3.) In production.rb
  
    config.assets.compile = true


More configuration options here: http://premiumsoftware.net/cleditor/docs/GettingStarted.html#usage

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
