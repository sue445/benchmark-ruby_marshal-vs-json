# benchmark-ruby_marshal-vs-json
Benchmark `Marshal` vs `json`

## Report
### `Marshal.load` vs `JSON.load`
```bash
$ bundle exec ruby bench.rb
Warming up --------------------------------------
        Marshal.load   139.040k i/100ms
           JSON.load    90.604k i/100ms
Calculating -------------------------------------
        Marshal.load      1.400M (± 1.7%) i/s -      7.091M in   5.068045s
           JSON.load    885.701k (± 0.4%) i/s -      4.440M in   5.012601s
```

### `Marshal.dump` vs `Hash#to_json`
```bash
$ bundle exec ruby bench_save.rb
Warming up --------------------------------------
        Marshal.dump   112.291k i/100ms
        Hash#to_json   119.073k i/100ms
Calculating -------------------------------------
        Marshal.dump      1.095M (± 0.7%) i/s -      5.502M in   5.025235s
        Hash#to_json      1.186M (± 0.7%) i/s -      5.954M in   5.020268s
```
