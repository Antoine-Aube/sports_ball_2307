class Player
  attr_reader :name, :monthly_cost, :contract_length
    
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def first_name
    name_split = name.split
    first_name = name_split[0]
    first_name
  end

  def last_name
    name_split = name.split
    last_name = name_split[1]
    last_name
  end

  def total_cost
    @contract_length * @monthly_cost
  end
end