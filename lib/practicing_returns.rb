require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    #Pushes array[i] into collection on each pass through
    collection << yield(array[i])
    i += 1
  end
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
