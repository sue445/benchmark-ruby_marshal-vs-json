require "json"
require "benchmark/ips"

Benchmark.ips do |x|
  obj = {a: 1, b: "2"}

  x.report("Marshal.dump") do
    Marshal.dump(obj)
  end

  x.report("Hash#to_json") do
    obj.to_json
  end
end
