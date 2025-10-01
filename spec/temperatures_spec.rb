# spec/temperatures_spec.rb
RSpec.describe "temperatures.rb" do
  describe "output" do
    it "prints the count of temperatures", points: 1 do
      output = run_script_and_capture_lines("temperatures.rb")
      expect(output[0]).to eq("6 temperatures recorded")
    end

    it "prints the highest temperature", points: 1 do
      output = run_script_and_capture_lines("temperatures.rb")
      expect(output[1]).to eq("Highest: 79")
    end

    it "prints the lowest temperature", points: 1 do
      output = run_script_and_capture_lines("temperatures.rb")
      expect(output[2]).to eq("Lowest: 65")
    end

    it "prints the average temperature rounded to 2 decimals", points: 1 do
      output = run_script_and_capture_lines("temperatures.rb")
      expect(output[3]).to eq("Average: 71.33")
    end

    it "compares the last temperature to the average", points: 2 do
      output = run_script_and_capture_lines("temperatures.rb")
      expect(output[4]).to eq("The last recorded temperature (70) is below the average.")
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("temperatures.rb")) }

    it "uses Array#count", points: 1 do
      expect(source_code).to match(/temperatures\.count/)
    end

    it "uses Array#max and Array#min", points: 2 do
      expect(source_code).to match(/temperatures\.max/)
      expect(source_code).to match(/temperatures\.min/)
    end

    it "uses Array#sum", points: 1 do
      expect(source_code).to match(/temperatures\.sum/)
    end

    it "uses Array#last", points: 1 do
      expect(source_code).to match(/temperatures\.last/)
    end

    it "does not hard-code final output strings", points: 2 do
      expect(source_code).not_to match(/["']6 temperatures recorded["']/)
      expect(source_code).not_to match(/["']Highest: 79["']/)
      expect(source_code).not_to match(/["']Lowest: 65["']/)
      expect(source_code).not_to match(/["']Average: 71.33["']/)
      expect(source_code).not_to match(/["']The last recorded temperature \(70\) is below the average\.["']/)
    end
  end
end
