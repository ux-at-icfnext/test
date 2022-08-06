FROM gitpod/workspace-full

ENV RETRIGGER=1

ENV BUILDKIT_VERSION=0.9.3
ENV BUILDKIT_FILENAME=buildkit-v${BUILDKIT_VERSION}.linux-amd64.tar.gz

# Install custom tools, runtime, etc.
RUN sudo su -c "cd /usr; curl -L https://github.com/moby/buildkit/releases/download/v${BUILDKIT_VERSION}/${BUILDKIT_FILENAME} | tar xvz"
# create a Jekyll container from a Ruby Alpine image

# At a minimum use Ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# Add Jekyll dependancies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the ruby bundler && install jekyll
RUN gem update bundler && gem install bundler jekyll
