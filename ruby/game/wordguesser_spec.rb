require_relative 'wordguesser'

describe GuessingGame do
	let(:game) { GuessingGame.new("cookies")}

	it "changes secret word into an array of underscores" do 
		expect(game.hidden).to eq ["_", "_", "_", "_", "_", "_", "_"]
	end

	it "changes an underscore to reflect the placement of a correct letter" do
		game.hidden.join" "
		expect(game.guess_letter("c")).to eq "c _ _ _ _ _ _"
	end

	it "provides a message for guessing the right word" do
		game.hidden.join" "
		expect(game.guess_word("cookies")).to eq "Success! The word is cookies"
	end
end