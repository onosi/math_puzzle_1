# declear variables

length = ARGV[0].to_i
menbers = ARGV[1].to_i
part = 1
count = 0

while part < length
    count = count + 1
    if menbers > part
         part = part * 2
    else
        part = part + menbers
    end
end

puts count
