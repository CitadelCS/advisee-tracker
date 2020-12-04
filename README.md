# advisee-tracker

<a href="https://codeclimate.com/github/CitadelCS/advisee-tracker/maintainability"><img src="https://api.codeclimate.com/v1/badges/7aa4007c770db57f0b99/maintainability" /></a>

<a href="https://codeclimate.com/github/CitadelCS/advisee-tracker/test_coverage"><img src="https://api.codeclimate.com/v1/badges/7aa4007c770db57f0b99/test_coverage" /></a>

**Current Code Coverage:**
  Coverage report generated for Cucumber Features to /home/codio/workspace/advisee-tracker/coverage. **95 / 96 LOC (98.96%) covered.**

**Heroku App Link**
https://infinite-wildwood-67198.herokuapp.com/

**PivotalTracker**
https://www.pivotaltracker.com/n/projects/2471805


***Steps to recreate code base***
1.  git clone https://github.com/CitadelCS/advisee-tracker/
2.  cd advisee-tracker
3.  bundle install
4.	delete gemfile.lock. it will get re-created when you run bundle install again
5.  sudo apt-get update before performing step 3. I wasn't able to install postgresql without that.
6.	install postgres locally (other teammates may have to do this first before bundling from now on)

  a.	sudo apt-get install postgresql
  
  b.	sudo apt-get install libpq-dev
  
  c. ***BEFORE STEP 7***
  
      i.	 for Step 7 I needed to sudo gem install rails -v 4.2.10 
      
      ii.	Then  gem install pg -v '0.21.0' . 
      
      iii.	Then comment out gem 'rails_12factor' 
      
      iv.	then gem install bcrypt -v 3.1.7 . 
      
      v.	then sudo gem install byebug
      
      vi.	then sudo gem install database_cleaner -v 1.4.1
      
      vii.	then sudo gem install capybara -v 2.4.4
      
      viii.	then sudo gem install launchy
   
      ix.	 then sudo gem install rspec-rails -v 3.7.2
     
     x.	then sudo gem install ZenTest -v 4.11.2
     
     xi.	then sudo gem install cucumber-rails
     
     xii.	then sudo gem install cucumber-rails-training-wheels
     
     xiii.	 then  sudo gem install sass-rails -v 5.0.3
     
     xiv.	then  sudo gem install coffee-rails -v 4.1.0
     
     xv.	then sudo gem install uglifier -v 2.7.1
     
     xvi.	then sudo gem install jquery-rails
     
     xvii.	then sudo gem install haml
     
     xviii.	then sudo gem install sprockets -v 3.6.3
     
     xix.	***IMPORTANT!!!***
     
     xx.	 then gem uninstall bundler -v ">= 2.0" 
     
     xxi.	then  gem install bundler -v "< 2.0"
     
     xxii.	step ^^**xxii**^^ is what allows you to then run a bundle install (required to do step 7) along with the steps included in step 4's link
     
     xxiii. uncomment the rails_12factor
     
7.	edit config/database.yml as instructed here:

  a.	https://devcenter.heroku.com/articles/sqlite3#getting-a-sqlite-error-even-though-it-is-not-in-the-gemfile
  
8.	add a 'codio' user for postgres as described here: https://rails.devcamp.com/trails/40/campsites/262/guides/how-to-fix-role-does-not-exist-error-linux-postgres

  a.	sudo su - postgres
  
  b.	createuser -s -r codio
  
  c.	logout
  
9.	create the missing bin folder added by Rails 4 with this command:
  
  a.	bundle exec rake rails:update:bin
  
10.	Fix the ruby shebang directives in binstubs as described here: https://devcenter.heroku.com/articles/ruby-binstub-shebang
11.	bundle install --without production
12.	bundle exec rake db:migrate
13.	bundle exec rake db:seed
14.	bundle exec rake db:test:prepare
15.	git commit all these changes on main branch
16.	install heroku CLI if you haven't already as instructed here: https://devcenter.heroku.com/articles/heroku-cli

  a.	curl https://cli-assets.heroku.com/install.sh | sh
  
17.	heroku login -i
18.	heroku create
19.	git push heroku main
20.	heroku rake db:migrate
21.	heroku rake db:seed
22.	it should work now.
23.	don't forget to push changes to main on github

  a.	git push origin main
  
24.	everyone else:

  a.	git pull origin main
  
  b.	install postgres and add codio user as above
  
  c.	bundle install, db migrate, seed, test prepare, etc
  
  d.	rails s
  
