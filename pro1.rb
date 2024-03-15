require 'csv'

hashes = []

CSV.foreach("data.csv", headers: true) do |row|
    hashes << row.to_h
end
puts hashes
