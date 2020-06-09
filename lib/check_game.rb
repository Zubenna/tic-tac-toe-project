class GameCheck
  def vallidate_position(data)
    pattern = /[0-8]/
    return data.match? pattern 
  end

  def vallidate_name(name)
       pattern = /^[a-zA-Z]*$/
       valid_name = name.match? pattern
       if valid_name && name.length >= 3
          return true
       else
          return false
       end
  end

  def vallidate_symbol(symbol)
      if symbol == "X" || symbol == "Y"
        return true
      else
        return false
      end
  end
end