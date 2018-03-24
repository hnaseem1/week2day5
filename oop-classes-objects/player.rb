class Player

  def initialize
    @gold_coins = 5
    @health_points = 10
    @lives = 0
  end

  def level_up
    @lives += 1
  end

  def collect_treasure

    if @gold_coins%10 == 0
      level_up

    else
      @gold_coins += 1
    end

  def do_battle(damage)
    def restart
      @gold_coins = 5
      @health_points = 10
      @lives = 0
    end
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
        if @lives < 0
          restart
        end
    end
    end
  end
  def return_values
    p "health #{@health_points}"
    p "gold coins #{@gold_coins}"
    p "lives #{@lives}"

  end

end


soldier = Player.new
soldier.level_up
soldier.return_values
soldier.collect_treasure
soldier.return_values
soldier.do_battle(10)
soldier.return_values
soldier.do_battle(10)
soldier.do_battle(10)
soldier.return_values
