class Piece < ApplicationRecord
  belongs_to :game

  # self.inheritance_column = :type (default)

  def color
  end
  
  def position
  end
  
  def move 
  end
  
  def captured
  end
  
  def is_obstructed?
  end

