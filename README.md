## Installation

### Prerequisite: RVM

[Install RVM](http://octopress.org/docs/setup/rvm) unless you are using it already and then install Ruby 1.9.3.

### Steps

```
git clone git://github.com/sdball/coffee-taster.git`
cd coffee-taster
rvm gemset name  # should report coffee-taster
gem install bundler
bundle install
```

## Usage

1. `rake watch`
2. Edit `coffee/main.coffee`
3. Open http://localhost:3000/ in a browser
4. Iterate, experiment, play!
