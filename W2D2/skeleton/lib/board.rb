class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @p_name1= name1
    @p_sname2=name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
     @cups.each_with_index do |c,i|
       next if i == 6 || i == 13
      4.times do
        c << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    x = @cups
    @cups[start_pos] = []

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if (@current_player == @p_name1  && ending_cup_idx == 6)
      return :prompt
    end
    if (@current_player == @p_name2  && ending_cup_idx == 13)
      return :prompt
    end
    if self.cups[ending_cup_idx].length == 1
      return :switch
    else
    ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    left = @cups.take(6)
    right = @cups[7..12]
    left.all? { |e| e.empty?  } || right.all? {|e| e.empty?}
  end

  def winner
    player1_count = @cups[6].count
    player2_count = @cups[-1].count
    if player1_count < player2_count
      @p_name2
    elsif player1_count > player2_count
      @p_name1
    else
      :draw
    end
  end
end
