require "./lib/student"
require "./lib/course"
require "./lib/term"

RSpec.describe "Term" do
  describe "#initialize" do
    it "creates a Term instance" do
      term = Term.new("Winter 20128")

      expect(term.class).to eq(Term)
    end
  end
end
