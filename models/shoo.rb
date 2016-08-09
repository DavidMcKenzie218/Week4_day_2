require_relative '../db/sql_runner'

class Shoo

  attr_reader :first_name, :second_name, :address, :size, :quantity, :id

  def initialize(options)
    @first_name = options["first_name"]
    @second_name = options["second_name"]
    @address = options["address"]
    @size = options["size"].to_i
    @quantity = options["quantity"].to_i
    @id = options["id"].to_i
  end

  def pretty_name
    return "#{@first_name} #{@second_name}"
  end

  def save
    sql = "INSERT INTO shoos (
    first_name, 
    second_name,
    address,
    size,
    quantity ) VALUES (
    '#{@first_name}',
    '#{@second_name}',
    '#{@address}',
    #{@size},
    #{@quantity}) RETURNING *;"
    shoo = SqlRunner.run(sql).first
    @id = shoo["id"].to_i
  end

  def self.all
    sql = "SELECT * FROM shoos;"
    shoos = SqlRunner.run(sql)
    result = shoos.map {|shoo| Shoo.new(shoo)}
    return result
  end

  def total_cost
    return 180*@quantity
  end

end