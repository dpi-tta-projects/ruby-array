# spec/dice_roll_spec.rb
RSpec.describe "dice_roll.rb" do
  describe "output" do
    it "prints a string beginning with 'You rolled a'", points: 1 do
      output = run_script_and_capture_lines("dice_roll.rb")
      expect(output[0]).to match(/^You rolled a \d$/)
    end

    it "outputs a number from the dice array", points: 1 do
      output = run_script_and_capture_lines("dice_roll.rb")
      number = output[0].split.last.to_i
      expect([1,2,3,4,5,6]).to include(number)
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("dice_roll.rb")) }

    it "uses Array#sample", points: 2 do
      expect(source_code).to match(/dice\.sample/)
    end
  end
end
