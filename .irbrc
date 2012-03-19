begin
  require 'wirble'

  Wirble.init
  Wirble.colorize
rescue
end

def quick(repetitions=100, &block)
  require 'benchmark'

  Benchmark.bmbm do |b|
    b.report {repetitions.times &block} 
  end
  nil
end
