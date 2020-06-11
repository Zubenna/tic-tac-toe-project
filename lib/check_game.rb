class GameCheck
  def vallidate_name(name)
    pattern = /^[a-zA-Z]*$/
    valid_name = name.match? pattern
    valid_name && name.length >= 3 ? true : false
  end

  def vallidate_symbol(symbol)
    symbol.eql?('X') || symbol.eql?('Y') ? true : false
  end

  def toggle_symbol(parameter)
    return 'Y' if parameter == 'X'
    return 'X' if parameter == 'Y'
  end
end
