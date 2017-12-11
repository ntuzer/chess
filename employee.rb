#NAME, TITLE, SALARY, BOSS

#Manager extends employee. Attr = [employees]. Report.
class Employee
  attr_accessor :title, :salary, :boss
  attr_reader :name

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(mult)
    @bonus = salary * mult
  end
end

class Manager < Employee
  attr_accessor :subordinate

  def initialize(name, title, salary, boss, subordinate)
    super(name, title, salary, boss)
    @subordinate = subordinate
  end

  def bonus(mult)
    amount = 0
    subordinate.each { |emp| amount += emp.salary }
    @bonus = amount * mult
  end
end


david = Employee.new("David", "TA", 10000, nil)
shawna = Employee.new("Shawna", "TA", 12000, nil)
darren =  Manager.new("Darren", "TA Manager", 78000, nil, [david, shawna])
ned = Manager.new("Ned", "Founder", 1000000, nil, [darren, david, shawna])

david.boss = darren
shawna.boss = darren
darren.boss = ned



p "Ned's bonus is #{ned.bonus(5)}"
p "Darren's bonus is #{darren.bonus(4)}"
p "Shawna's bonus is #{shawna.bonus(3)}"
p "David's bonus is #{david.bonus(3)}"
