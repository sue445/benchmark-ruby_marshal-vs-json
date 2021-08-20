require "json"
require "benchmark/ips"
require "oj"

::Oj.default_options = { mode: :compat }

obj = {a: 1, b: "2"}

Benchmark.ips do |x|
  x.report("Marshal.dump") do
    Marshal.dump(obj)
  end

  x.report("Hash#to_json") do
    obj.to_json
  end

  x.report("Oj.dump (compat mode)") do
    Oj.dump(obj)
  end
end
