# Enter your object-oriented solution here!
class Multiples
    attr_accessor :limit, :multiples  

    def initialize(limit)
        @limit = limit
        @multiples = collect_multiples
    end

    def collect_multiples
        (1...limit).to_a.reject { |num| num unless num % 3 == 0 || num % 5 == 0 }
    end

    def sum_multiples
        multiples.inject(:+)
    end

end