# spec/grocery_count_spec.rb
RSpec.describe "grocery_count.rb" do
  describe "output" do
    it "prints the count of items", points: 1 do
      output = run_script_and_capture_lines("grocery_count.rb")
      expect(output[0]).to eq("Total items: 4")
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("grocery_count.rb")) }

    it "uses Array#count", points: 2 do
      expect(source_code).to match(/groceries\.count/)
    end

    it "does not hard-code the output", points: 2 do
      expect(source_code).not_to match(/["']Total items: 4["']/)
    end
  end
end
