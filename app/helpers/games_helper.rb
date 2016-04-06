module GamesHelper
  class Game
    attr_reader :winner, :computer_choice, :player_choice

    def initialize(player_choice)
      @player_choice = player_choice
      @computer_choice = nil
      @winner = nil
    end

    def play
      @computer_choice = %w(Rock Paper Scissors).sample
      winner = "It's a tie!"
      if player_choice == "Rock"
        winner = "Computer" if computer_choice == "Paper"
        winner = "Player" if computer_choice == "Scissors"
      end

      if player_choice == "Paper"
        winner = "Computer" if computer_choice == "Scissors"
        winner = "Player" if computer_choice == "Rock"
      end

      if player_choice == "Scissors"
        winner = "Computer" if computer_choice == "Rock"
        winner = "Player" if computer_choice == "Paper"
      end
      @winner = winner
    end
  end
end
