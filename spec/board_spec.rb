require 'board'

describe Board do

  before :each do
    @board = Board.new(3)
  end

  describe "#cells" do
    it "board has an attribute of cells" do
      expect(@board).to respond_to(:cells)
      expect(@board).to respond_to(:cells=)
    end
  end

  describe "#reset!" do
    it "resets the board's cells to an array all of which elements are nil" do
      expect(@board.reset!).to eq(Array.new(9, nil))
    end
  end

  describe "#full?" do
    it "returns false if the board is not full and true if it is" do
      expect(@board.full?).to eq(false)
    end
  end

  describe "#turn_count" do
    it "will return 0 when no turns have been played" do
      expect(@board.turn_count).to eq(0)
    end
  end

end
