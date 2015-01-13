require ('rspec')
require ('hash_class')

describe(MyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end

    it("stores multiple keys and values") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "cuter")
      test_hash.store("panda", "cutest")
      expect(test_hash.fetch("dog")).to(eq("cuter"))
    end
  end
end
