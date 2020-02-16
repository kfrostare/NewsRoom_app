# The News Room app
## Reviving an old blog (Legacy code)
The client requested help with freshening up an old blog. The base was built on Ruby on Rails and at this point they needed help with testing and debugging some core functionalities like read and edit existing articles. We went about this assignment using the AUT-cycle to make sure we don't spend time on anything the client doesn't ask for, which is especially risky when dealing with basic structures that you really just want to take and "run with" development wise.

### User stories
*The app has been built with two requests in mind. These are the user stories of our client.*

**Show a list of articles**<br>
As a visitor <br>
When I visit the application's landing page <br>
I would like to see a list of articles

**Enable a publisher to edit**<br>
As a publisher<br>
In order to keep my content accurate<br>
I would like to be able to edit my articles

*For more information and installment details scroll past the image*<br>
<img src="./Assets/library.jpg" width="400" height="200"><br>

## Getting started
This is how to pick up where we left off, by getting this project up and running on your local machine. Let us know what you changed to make it even more awesome! 
### Setup
To access this code visit [GitHub Repo](https://github.com/kfrostare/AUT-cycle) and complete the following steps:

1. **Make sure you've got Rails installed, if not do**
```
$ gem install rails
```
2. **Scaffold the Rails application you'll be working with**
```
$ rails new rails_demo --database=postgresql --skip-test
$ cd rails_demo
```
3. **Add the following gems to your development- and test groups of the Gemfile**
```
group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'capybara' 
end
```
4. **Install the dependencies with Bundler**
```
$ bundle 
```
5. **Run the Rspec generator to add the testing framework to your Rails app**
```
$ bundle exec rails generate rspec:install

```
6. **Configure shoulda-matchers, your spec/rails_helpe.rb should look something like this:**
```
require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)

abort("The Rails environment is running in production mode!") if 				Rails.env.production?
require 'rspec/rails'

begin
	ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
	puts e.to_s.strip
	exit 1
end

RSpec.configure do |config|
	config.fixture_path = "#{::Rails.root}/spec/fixtures"
	config.use_transactional_fixtures = true
	config.infer_spec_type_from_file_location!
	config.filter_rails_from_backtrace!
	config.include FactoryBot::Syntax::Methods
end

Shoulda::Matchers.configure do |config|
	config.integrate do |with|
		with.test_framework :rspec
		with.library :rails
	end
end
```
7. **TIP: To avoid the generators to scaffold too many files we recommend you make the following modifications to your config/application.rb -file;**
```
class Application < Rails::Application

	# Disable generation of helpers, javascripts, CSS, and view, helper, routing and controller specs

	config.generators do |generate|
		generate.helper false
		generate.assets false
		generate.view_specs false
		generate.helper_specs false
		generate.routing_specs false
		generate.controller_specs false
	end
# ...
end
```
8. **The last thing is to open .rspec and modify so the first line is set to:**
```
--format documentation
```
9. **Now if you run Rspec in your terminal it should give you an output like:**
```
$ rspec
No examples found.

Finished in 0.00023 seconds (files took 0.5029 seconds to load)
0 examples, 0 failures
```
### Building and launching
- The material has been provided by [Craft Academy](learn.craftacademy.co) <br>
- The app is being created in [Ruby on Rails](https://rubyonrails.org/) <br>
- The app is being tested in [Rspec](rspec.info) <br>
- We are also using [Coveralls](https://coveralls.io/), [Semaphore](https://coveralls.io/) and [Heroku](http://heroku.com/) as our API's of choice

## We would like to thank
- [Pierre Tiberi](https://github.com/pierre-1) for helping with the setup of this application
- [Nathan Pascua](https://www.youtube.com/watch?v=Dtcp3mJznCw) for his RoR tutorial on seeds.rb
- [BarbieTechFabulous](https://www.youtube.com/watch?v=xbW4K3h8hRU&list=PLRtV6ODziifub4Eav114vhu0BGypwCLph&index=3&t=351s) for her tutorial on editing and deleting blog
- [Howilearnedrails](https://howilearnedrails.wordpress.com/2014/01/18/add-a-background-image-to-a-ruby-on-rails-app-using-bootstrap-css/) for good tips on syling the app in scss/bootstrap
- The people at [Ruby On Rails](https://guides.rubyonrails.org/getting_started.html#updating-articles) for providing such pedagogical instructions on how to set up their application and its features

## Updates/Improvement Plans
Since this is a work in progress we'll keep you posted by continuously updating our to-do list below

**User can**

**[ x ] Enter the News Room and see a list of articles by title** <br>
**[ x ] Click on any title to read entire article** <br>
**[ x ] After having read an article they can go back or edit** <br>
[ - ] Comment on articles <br>
[ - ] Edit their comment <br>
[ - ] Delete their comment <br>
[ - ] Share an article in other social media channels <br>

**Authors can**

**[ x ] Edit article title- and content** <br>
[ - ] Log in as author <br>
[ - ] Create a new article <br>
[ - ] Add themselves as author <br>
[ - ] Add images to their articles <br>
[ - ] Toggle comments- feature in articles <br>
[ - ] Delete comments <br>
[ - ] Respond to comments <br>

## License
MIT License