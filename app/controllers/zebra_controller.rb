class ZebraController < ApplicationController
  def rules
    render({:template => "game_templates/rules"})
  end
  def giraffe
    random_move = ["rock", "paper", "scissors"].sample

    if random_move == "scissors"
      result = "won"
    elsif random_move == "rock"
      result = "tied"
    else random_move == "paper"
      result = "lost"
    end
  
    @played = "They played #{random_move}!"
    @outcome = "We #{result}!"

    render({:template => "game_templates/play_rock"})
  end

  def elephant
    random_move = ["rock", "paper", "scissors"].sample

    if random_move == "rock"
      result = "won"
    elsif random_move == "paper"
      result = "tied"
    else random_move == "scissors"
      result = "lost"
    end
  
    @played = "They played #{random_move}!"
    @outcome = "We #{result}!"

    render({:template => "game_templates/play_paper"})
  end

  def lion
    random_move = ["rock", "paper", "scissors"].sample

    if random_move == "paper"
      result = "won"
    elsif random_move == "scissors"
      result = "tied"
    else random_move == "rock"
      result = "lost"
    end
  
    @played = "They played #{random_move}!"
    @outcome = "We #{result}!"

    render({:template => "game_templates/play_scissors"})
  end
end
