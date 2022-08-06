# create a Jekyll container from a Ruby Alpine image

# At a minimum use Ruby 2.5 or later
FROM ruby:2.7

# Update the ruby bundler && install jekyll
RUN gem update bundler && gem install bundler jekyll
