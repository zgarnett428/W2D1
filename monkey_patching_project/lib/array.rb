# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        self.max - self.min if self.length != 0
    end

    def average
        self.sum(0.0) / self.length if self.length != 0
    end

    def median
        if self.length.odd?
            self.sort[self.length / 2]
        else 
            self.shift && self.unshift while self.length > 2
            average
        end
    end

    def counts
        count = Hash.new(0)
        self.each { |ele| count[ele] += 1}
        count
    end

    def my_count(val)
        counts[val]
    end

    def my_index(val)
        self.each.with_index { |ele, i| return i if ele == val}
        nil
    end

    def my_uniq
        new_arr = []
        self.each { |ele| new_arr << ele if !new_arr.include?(ele) }
        new_arr
    end

    def my_transpose
        height = self.length
        width = self[0].length
        grid = Array.new(height) {Array.new(width)}
        
        (0...self.length).each do |col|
            self.each_index do |row|
                grid[row][col] = self[col][row]
            end
        end
        grid
    end
  
end