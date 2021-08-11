require "json"
require "benchmark/ips"

def marshal_dump_and_load(obj)
  str = Marshal.dump(obj)
  Marshal.load(str)
end

def to_json_and_load_json(obj)
  json = obj.to_json
  JSON.load(json)
end

Benchmark.ips do |x|
  obj = {a: 1, b: "2"}

  x.report("Marshal.dump and Marshal.load") do
    marshal_dump_and_load(obj)
  end

  x.report("to_json and JSON.load") do
    to_json_and_load_json(obj)
  end
end
