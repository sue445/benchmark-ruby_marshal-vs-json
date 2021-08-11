# benchmark-ruby_marshal_dump-vs-to_json
Benchmark `Marshal.dump` vs `to_json`

## Report
```bash
$ bundle exec ruby bench.rb
Warming up --------------------------------------
Marshal.dump and Marshal.load
                        60.478k i/100ms
        Marshal.dump   110.597k i/100ms
        Marshal.load   142.099k i/100ms
to_json and JSON.load
                        50.779k i/100ms
             to_json   118.925k i/100ms
           JSON.load    91.968k i/100ms
Calculating -------------------------------------
Marshal.dump and Marshal.load
                        608.562k (± 1.5%) i/s -      3.084M in   5.069441s
        Marshal.dump      1.095M (± 0.9%) i/s -      5.530M in   5.049088s
        Marshal.load      1.377M (± 1.7%) i/s -      6.963M in   5.059253s
to_json and JSON.load
                        495.289k (± 1.4%) i/s -      2.488M in   5.024661s
             to_json      1.184M (± 0.7%) i/s -      5.946M in   5.022874s
           JSON.load    893.072k (± 0.6%) i/s -      4.506M in   5.046141s
```
