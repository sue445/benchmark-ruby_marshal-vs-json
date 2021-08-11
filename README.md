# benchmark-ruby_marshal_dump-vs-to_json
Benchmark `Marshal.dump` vs `to_json`

## Report
```bash
$ bundle exec ruby bench.rb
Warming up --------------------------------------
Marshal.dump and Marshal.load
                        60.855k i/100ms
to_json and JSON.load
                        51.088k i/100ms
Calculating -------------------------------------
Marshal.dump and Marshal.load
                        605.661k (± 1.0%) i/s -      3.043M in   5.024298s
to_json and JSON.load
                        495.627k (± 1.3%) i/s -      2.503M in   5.051643s
```
