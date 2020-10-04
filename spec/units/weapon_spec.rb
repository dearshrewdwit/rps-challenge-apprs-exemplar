require 'weapon'

describe Weapon do
  context 'rock' do
    it 'beats scissors' do
      # setup
      weapon1 = Weapon.new(:rock)
      weapon2 = Weapon.new(:scissors)

      expect(weapon1.against(weapon2)).to eq(:win)
    end

    it 'loses against paper' do
      # setup
      weapon1 = Weapon.new(:rock)
      weapon2 = Weapon.new(:paper)

      expect(weapon1.against(weapon2)).to eq(:loss)
    end

    it 'draws against rock' do
      # setup
      weapon1 = Weapon.new(:rock)
      weapon2 = Weapon.new(:rock)

      expect(weapon1.against(weapon2)).to eq(:draw)
    end
  end

  context 'scissors' do
    it 'beats paper' do
      # setup
      weapon1 = Weapon.new(:scissors)
      weapon2 = Weapon.new(:paper)

      expect(weapon1.against(weapon2)).to eq(:win)
    end

    it 'loses against rock' do
      # setup
      weapon1 = Weapon.new(:scissors)
      weapon2 = Weapon.new(:rock)

      expect(weapon1.against(weapon2)).to eq(:loss)
    end

    it 'draws against scissors' do
      # setup
      weapon1 = Weapon.new(:scissors)
      weapon2 = Weapon.new(:scissors)


      expect(weapon1.against(weapon2)).to eq(:draw)
    end
  end

  context 'paper' do
    it 'beats rock' do
      # setup
      weapon1 = Weapon.new(:paper)
      weapon2 = Weapon.new(:rock)

      expect(weapon1.against(weapon2)).to eq(:win)
    end

    it 'loses against scissors' do
      # setup
      weapon1 = Weapon.new(:paper)
      weapon2 = Weapon.new(:scissors)

      expect(weapon1.against(weapon2)).to eq(:loss)
    end

    it 'draws against paper' do
      # setup
      weapon1 = Weapon.new(:paper)
      weapon2 = Weapon.new(:paper)

      expect(weapon1.against(weapon2)).to eq(:draw)
    end
  end
end
