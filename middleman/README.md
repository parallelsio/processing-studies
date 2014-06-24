Middleman + Bower + p5.js experiment

# download this repository to your machine (laptop)
$ git clone https://github.com/parallelsio/processing-studies.git

$ cd middleman


# install the bundler gem, a version manager for Ruby gems
# This requires ruby. If ruby is not installed, get it through rbenv:
# http://www.rubyinside.com/rbenv-a-simple-new-ruby-version-management-tool-5302.html
$ gem install bundler


# install Bower, package manager for front end assets/libraries
# -g is for global, so you only need to do this once to use on other projects
$ npm install -g bower
# npm command relies on 

# easiest way to install npm and node is with HomeBrew, a package manager for OS X
# http://thechangelog.com/install-node-js-with-homebrew-on-os-x/

# this project uses middleman, a static website generator http://middlemanapp.com/basics/getting-started/
# running this command (bundle install), installs this project's Ruby gems, including middleman + its dependencies: http://middlemanapp.com/basics/getting-started/
$ bundle install



# download and install front end packages and js libs
# jquery, etc
$ bower install

$ cd source

# start local middleman server
$ middleman