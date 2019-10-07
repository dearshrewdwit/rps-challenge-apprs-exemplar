class Weapon

  RULES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def against(weapon)
    return :draw if @type == weapon.type
    return :win if RULES[@type] == weapon.type
    :loss
  end
end
