# spec/last_square_spec.rb
RSpec.describe "last_square.rb" do
  describe "output" do
    it "prints the square of the last item in the array", points: 2 do
      output = run_script_and_capture_lines("last_square.rb")
      expect(output[0]).to eq("Square of last: 36")
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("last_square.rb")) }

    it "uses Array#last", points: 1 do
      expect(source_code).to match(/numbers\.last/)
    end

    it "uses exponentiation operator (**)", points: 1 do
      expect(source_code).to match(/\*\*/)
    end

    it "does not hard-code the result", points: 2 do
      expect(source_code).not_to match(/["']Square of last: 36["']/),
        "Don't hard-code the string; compute it using numbers.last ** 2"
    end
  end
end
