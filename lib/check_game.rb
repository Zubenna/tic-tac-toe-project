class GameCheck
  def vallidate_position(data)
    pattern = /[0-8]/
    data.length == 1 && data.match?(pattern) ? true : false
  end

  def vallidate_name(name)
    pattern = /^[a-zA-Z]*$/
    valid_name = name.match? pattern
    valid_name && name.length >= 3 ? true : false
  end

  def vallidate_symbol(symbol)
    symbol == 'X' || symbol == 'Y' ? true : false
  end
end
