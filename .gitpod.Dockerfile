RUN apt-add-respository ppa:brightbox/ruby-ng
RUN apt-get update && apt-get install -y zlibc \
  libgcrypt11-dev \
  zliblg-dev \
  build-essential \
  git
  
  
RUN apt-get install -y -q ruby2.6.3 ruby2.6.3-dev
RUN gem install rake:11.1.2 \
  bundler:1.11.2 \
  --no-rdoc --no-ri
RUN gem install jekyll:3.8.5 \
  rouge:1.10.1 \
  jekyll-contentful-data-import:1.8.1 \
  jekyll-datapage-generator:1.3.0 \
  --no-rdoc --no-ri
