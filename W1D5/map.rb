class Map

  attr_reader :map

  def initialize
    @map = [[]]
  end

  def set(key, value)
    first_el = @map.index { |arr| arr[0] == key  } # [[3,4]] ==>1

    if first_el
      map[first_el][1] = value
    else
      @map << [key,value]
    end
  end

  def get(key)
    map.each do |inner_arr|
      if inner_arr[0] == key
        return inner_arr[1]
      end
    end
    nil
  end

   def delete(key)
     result = []
     @map.each_index do |idx|
       @map.delete_at(idx) if @map[idx][0] == key
      end
    end

    def show
      @map
    end
    
end

map = Map.new
map.set(3,4)
map.set(3,5)
map.set(5,6)
p map.get(3)
p map.delete(5)
p map.show
