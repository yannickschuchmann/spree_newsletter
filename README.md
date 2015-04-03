SpreeNewsletter
===============

For now only usecase is collecting newsletter recipients.

Installation
------------

Add spree_newsletter to your Gemfile:

```ruby
gem 'spree_newsletter', github: 'yannickschuchmann/spree_newsletter', branch: '3-0-stable'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_newsletter:install
```

Usage
-----

Use this snippet anywhere in your views:

```erb
<%= form_for :newsletter_recipient, url: newsletter_recipients_path do |f| %>
  <%= f.label :email %>
  <%= f.text_field :email, placeholder: "Enter your e-mail" %>
  <%= f.submit %>
<% end %>
```