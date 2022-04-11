# your code here
class MySet
    
    def initialize(enum=[])
        @hash = {}
        enum.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def self.[](value)
        puts value
        self.initialize(value)
    end

    def size
        @hash.length
    end

    def self.[](*args)
        new(args)
    end

    def clear
        @hash.clear
        self
    end

    def each(&block)
        @hash.keys.each(&block)
        self
    end

    def inspect
        "#<#{self.class.name}: {#{@hash.keys.join(', ')}}>"
    end

end