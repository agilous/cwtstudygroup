require "spec_helper"

describe State do

  describe ".filter" do

    it "returns the names of states that match a given substring ordered alphabetically" do
      expect(State.filter('Dakota') == ["North Dakota", "South Dakota"])
    end

    it "returns nil if no match is found" do
      expect(State.filter('Mongolia') == nil)
    end
  end
end