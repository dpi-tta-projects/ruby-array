# spec/movies_spec.rb
RSpec.describe "movies.rb" do
  describe "output" do
    it "prints the first movie", points: 1 do
      output = run_script_and_capture_lines("movies.rb")
      expect(output[0]).to eq("First: Inception")
    end

    it "prints the last movie", points: 1 do
      output = run_script_and_capture_lines("movies.rb")
      expect(output[1]).to eq("Last: Interstellar")
    end

    it "prints the total count of movies", points: 1 do
      output = run_script_and_capture_lines("movies.rb")
      expect(output[2]).to eq("Total movies: 4")
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("movies.rb")) }

    it "uses Array#push to add a movie", points: 1 do
      expect(source_code).to match(/movies\.push/)
    end

    it "uses Array#first and Array#last", points: 2 do
      expect(source_code).to match(/movies\.first/)
      expect(source_code).to match(/movies\.last/)
    end

    it "uses Array#count", points: 1 do
      expect(source_code).to match(/movies\.count/)
    end

    it "does not hard-code final strings", points: 2 do
      expect(source_code).not_to match(/["']First: Inception["']/)
      expect(source_code).not_to match(/["']Last: Interstellar["']/)
      expect(source_code).not_to match(/["']Total movies: 4["']/)
    end
  end
end
