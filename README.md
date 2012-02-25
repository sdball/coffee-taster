# Coffee Taster

An easy to install, easy to use CoffeeScript playground.

## Prerequisite: RVM

[Install RVM](http://octopress.org/docs/setup/rvm) unless you are using it already and then install Ruby 1.9.3.

## Installation

```
git clone git://github.com/sdball/coffee-taster.git`
cd coffee-taster
rvm gemset name  # should report coffee-taster
gem install bundler
bundle install
```

## Usage

1. `rake watch`
2. Open index.html in a browser
3. Edit `coffee/main.coffee`
4. Iterate, experiment, play!

Now you can follow along with just about any CoffeeScript tutorial without
having to do anything else. No Node.js to install, no new terminal scripts to
figure out.

## TODO

- Report the actual CoffeeScript file with a syntax error

## Similar Projects

If you're looking for a more full featured automatic CoffeeScript compiler.

- [Guard::CoffeeScript](https://github.com/netzpirat/guard-coffeescript) - A gem that integrates with guard to automatically recompile a project's CoffeeScript.

