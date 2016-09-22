# Searchkick example

[searchkick][1] example for [Synonyms][2], [Suggestions][3], [Aggregations][4], [Highlight][5]

  [1]: https://github.com/ankane/searchkick
  [2]: https://github.com/ankane/searchkick#synonyms
  [3]: https://github.com/ankane/searchkick#suggestions
  [4]: https://github.com/ankane/searchkick#aggregations
  [5]: https://github.com/ankane/searchkick#highlight

## Use

```ruby
bundle install
bundle exec rake db:migrate
bundle exec rake db:seed
vime config/initializers/elasticsearch.rb #setting elasticsearch host
rails server
visit locolhost:3000
```

## Demo Url
https://searchkick-example.herokuapp.com/products