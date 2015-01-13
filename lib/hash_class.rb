class MyHash
  define_method(:initialize) do
    @initial_array = []
  end

  define_method(:store) do |animal, adjective|
    @animal = animal
    @adjective = adjective
    second_array = [@animal, @adjective]
    @initial_array.push(second_array)
  end

  define_method(:fetch) do |animal|
    @initial_array.each() do |key_value_arrays|
      if key_value_arrays.include?(animal)
        return key_value_arrays.at(1)
      end
    end
  end
end
