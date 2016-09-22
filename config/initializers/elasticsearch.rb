host = ENV["ELASTICSEARCH_URL"] || 'localhost:9201'
Searchkick.client = Elasticsearch::Client.new(hosts: [host],
                                              retry_on_failure: true)
