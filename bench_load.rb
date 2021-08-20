require "json"
require "benchmark/ips"
require "oj"

::Oj.default_options = { mode: :compat }

obj = {a: 1, b: "2"}
dump_str = Marshal.dump(obj)
json = obj.to_json

Benchmark.ips do |x|
  x.report("Marshal.load") do
    Marshal.load(dump_str)
  end

  x.report("JSON.load") do
    JSON.load(json)
  end

  x.report("Oj.load (compat mode)") do
    Oj.load(json)
  end
end
