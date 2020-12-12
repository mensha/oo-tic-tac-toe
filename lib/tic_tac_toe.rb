require 'pry'

class TicTacToe

    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [6,4,2], [0,4,8]]

    def initialize
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

    end

    def display_board
        # row = ["   " "|" "   " "|" "   "]
        separator = "-----------"
       
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts  " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts   "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} " 
      end 

      def input_to_index(user_input)
           array_spot = user_input.to_i 
            array_spot- 1
      end


      def move (index, play)
        @board[index] = play
     
      end

      def position_taken?(index)

                if @board[index]== " "
            false
          else 
              true
       
          end     
    end

      def valid_move?(index)
        if @board[index]== " "
          true
        else 
            false
     
        end     

      end

      def turn_count
     
        index = 0
        @board.each do |space|          
        if space == "X" || space == "O"
          index +=1     
         
        end    
      end 
      return index
    end


    def current_player
       


    end
  end


    