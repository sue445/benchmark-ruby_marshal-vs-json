# benchmark-ruby_marshal-vs-json
Benchmark `Marshal` vs `json`

## Report
### `Marshal.load` vs `JSON.load` vs `Oj.load` (compat mode)
```bash
$ bundle exec ruby bench.rb
Warming up --------------------------------------
        Marshal.load   136.687k i/100ms
           JSON.load    84.018k i/100ms
Oj.load (compat mode)
                       271.304k i/100ms
Calculating -------------------------------------
        Marshal.load      1.363M (± 2.3%) i/s -      6.834M in   5.018257s
           JSON.load    888.781k (± 1.3%) i/s -      4.453M in   5.011076s
Oj.load (compat mode)
                          2.697M (± 1.0%) i/s -     13.565M in   5.030179s
```

### `Marshal.dump` vs `Hash#to_json` vs `Oj.dump` (compat mode)
```bash
$ bundle exec ruby bench_save.rb
Warming up --------------------------------------
        Marshal.dump   108.381k i/100ms
        Hash#to_json   118.309k i/100ms
Oj.dump (compat mode)
                       574.995k i/100ms
Calculating -------------------------------------
        Marshal.dump      1.092M (± 1.3%) i/s -      5.527M in   5.063741s
        Hash#to_json      1.154M (± 2.6%) i/s -      5.797M in   5.026218s
Oj.dump (compat mode)
                          5.758M (± 0.8%) i/s -     29.325M in   5.093626s
```
