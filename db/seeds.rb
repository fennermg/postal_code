# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('lib/seeds/Libro1.csv', headers: true, encoding: 'ISO-8859-1', col_sep: ';') do |row|
    p=row.to_hash

    t = Code.new

    t.department = p['department']
    t.municipality = p['municipality']
    t.postal_code = p['postal_code']
    t.neighbourhood = p['neighbourhood']

    t.save
end