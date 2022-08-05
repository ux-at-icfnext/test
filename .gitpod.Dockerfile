
# create a Jekyll container from a Ruby Alpine image

# At a minimum use Ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# Add Jekyll dependancies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the ruby bundler && install jekyll
RUN gem update bundler && gem install bundler jekyll
