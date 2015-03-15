# Don't you count

[ActiveAdmin](https://github.com/activeadmin/activeadmin) is a great way to boostrap a good looking and customizable admin interface in no time. However there are some pererformance issues related to using this tool.

## What is it about?

When displaying the index view AA automatically issues a `SELECT COUNT(*)` SQL query in order to enable pagination. As long as you have no more than couple thousand records in your db it is instant. However once your collections start getting bigger this single query could timeout your server. And this is no good. Setting:
````ruby
    index pagination_total: false do ...
```
does not prevent the `count` query.

## How to use ?

Gemfile

``` ruby
gem 'dont_you_count' # below activeadmin gem
```

config/initializers/active_admin.rb

````ruby
ActiveAdmin.setup do |config|
  config.dont_count = ['product', 'order']
end
````

That's it. The `count` query will no longer be issued for `product` and `offer` models. The total count will be set to 2 million. I don't know if it is the best idea but works for my case. It breaks the last pagination button but it is better then breaking the servers. PRs are welcome.

## Compatibility

Tested to work with activeadmin (1.0.0.pre) and kaminari (0.16.1). Let me know if you notice any problems with other versions.

Pull requests are welcome.
