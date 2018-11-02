class LRUCache
  attr_reader:number
    def initialize(size)
      @size = size
      @cache = []
    end

    def count
      @cache.count
      # returns number of elements currently in cache
    end

    def add(el)
      # adds element to cache according to LRU principle
      @cache.push(el) unless @cache.include?(el)
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cashe
    end

    private
    # helper methods go here!

  end
