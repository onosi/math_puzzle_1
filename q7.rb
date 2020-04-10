require 'date'

(Date.parse('1964-10-10')..Date.parse('2020-07-24')).each do |date|
    date = date.to_s().gsub(/-/, '').to_i()
    if date == date.to_s(2).reverse.to_i(2) 
        puts date
    end
end 