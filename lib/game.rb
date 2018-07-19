class Game 
    attr_accessor :connect_four_board
  def initialize
    @connect_four_board = Board.new
  end

  def play
    loop do
      message = Message.new
      message.welcome
       puts @connect_four_board.render
       user_move = gets.chomp.upcase
       @connect_four_board.player_one_move(user_move)
       puts @connect_four_board.render
       puts "Wait for it!!!!"
       @connect_four_board.computer_move
       sleep(1)
       puts @connect_four_board.render
   end
 end
end