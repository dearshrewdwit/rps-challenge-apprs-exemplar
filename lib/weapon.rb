class Weapon
  WEAPONS = %i(rock paper scissors)
  RULES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  attr_reader :type

  def initialize(type = WEAPONS.sample)
    @type = type
  end

  def against(weapon)
    return :draw if @type == weapon.type
    return :win if RULES[@type] == weapon.type
    :loss
  end
end
