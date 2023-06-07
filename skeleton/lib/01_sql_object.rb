require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    # ...
  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # ...
  end

  def self.table_name
    table_name = self.to_s
    table_name = table_name[0].downcase + table_name[1..-1]
    snake = ""
    first, last = 0, 0
    table_name.each_char.with_index do |char,i|
      if char == char.upcase
        snake += table_name[first..last].downcase + "_"
        first = i
      else
        last = i
      end
      last = i
    end
    snake += table_name[first..last].downcase + "s"
    snake
  end

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
