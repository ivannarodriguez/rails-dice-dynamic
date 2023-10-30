class DiceController < ApplicationController
  def backhome
    render({:template => "homepage"})
  end

  def twosix
    @num_dice = 2.to_s
    @num_sides = 6.to_s
    @rolls = []

    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
    
    render({:template => "rollstatic"})
  end

  def twoten
    @num_dice = 2.to_s
    @num_sides = 10.to_s
    @rolls = []

    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end

    render({:template => "rollstatic"})
  end

  def onetwenty
    @num_dice = 1.to_s
    @num_sides = 20.to_s
    @rolls = []

    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end

    render({:template => "rollstatic"})
  end

  def fivefour
    @num_dice = 5.to_s
    @num_sides = 4.to_s
    @rolls = []

    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end

    render({:template => "rollstatic"})
  end

  def roll
    @num_dice = params["number_of_dice"].to_i
    @num_sides = params["how_many_sides"].to_i
    @rolls = []
  
    @num_dice.times do
      @rolls.push(rand(1..@num_sides))
    end
    
    render({:template => "rolldynamic"})
  end
end
