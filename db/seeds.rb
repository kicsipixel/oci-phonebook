# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'

# API endpoint
url = 'https://randomuser.me/api/?results=20'

response = RestClient.get(url)
# array to store the response
results = JSON.parse(response.body)

results['results'].each { |result|
  contact = Contact.create(
    :firstName => result['name']['first'].capitalize,
    :lastName => result['name']['last'].capitalize,
    :photo_url => result['picture']['medium'],
    :mobile => result['cell'],
    :work => result['phone']
  )
}
