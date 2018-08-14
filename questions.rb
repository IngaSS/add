class Questions
  def initialize
    @QUESTIONS = [
      '1. Какое вы предпочитаете рукопожатие?

а) короткое, но крепкое

б) продолжительное и интенсивное

в) легкое прикосновение.',
      '2. Ваш знак зодиака?

а) Лев, Овен, Козерог, Телец;

б) Близнецы, Скорпион, Водолей, Стрелец;

в) Выбы, Рак, Дева, Весы.',
      '3. Какая у вас кожа?

а) нормальная, не требующая специального ухода;

б) нечувствительная;

в) сухая и чувствительная.',
      '4. В парке на лавочке сидит женщина, погруженная в свои мысли. Вам кажется, что…

а) она охотно пребывает в одиночестве;

б) она хочет, чтобы ее пожалели;

в) у нее какие то проблемы.',
      '5. Что для вас характерно?

а) быстро забывать неприятности и огорчения; б) думать не только о себе;

в) если кого то обманываю, испытываю муки совести.',
      '6. Какая фигура вам больше нравится?

а) треугольник;

б) ромб;

в) круг.',
      '7. Каким видом спорта вы занимались бы охотнее всего?

а) парашютный спорт;

б) прыжки в воду;

в) альпинизм.'
    ]


    @a = []
    @b = []
    @c = []
  end

  def ask
    @QUESTIONS.each do |question|
      puts question
      user_input = STDIN.gets.chomp
      until user_input == "а" || user_input == "б" || user_input == "в"
        puts question
        user_input = STDIN.gets.chomp
      end
      if user_input == "а"
        @a << user_input
      elsif user_input == "б"
        @b << user_input
      else
        @c << user_input
      end
    end

  end

  def a
    return @a
  end

  def b
    return @b
  end

  def c
    return @c
  end
end