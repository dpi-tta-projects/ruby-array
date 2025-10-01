# spec/favorite_foods_spec.rb
RSpec.describe "favorite_foods.rb" do
  describe "output" do
    it "prints the first item", points: 1 do
      output = run_script_and_capture_lines("favorite_foods.rb")
      expect(output[0]).to eq("First: Pizza")
    end

    it "prints the last item", points: 1 do
      output = run_script_and_capture_lines("favorite_foods.rb")
      expect(output[1]).to eq("Last: Ice Cream")
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("favorite_foods.rb")) }

    it "uses Array#first", points: 1 do
      expect(source_code).to match(/foods\.first/)
    end

    it "uses Array#last", points: 1 do
      expect(source_code).to match(/foods\.last/)
    end

    it "does not hard-code final strings", points: 2 do
      expect(source_code).not_to match(/["']First: Pizza["']/)
      expect(source_code).not_to match(/["']Last: Ice Cream["']/)
    end
  end
end
