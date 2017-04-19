# frozen_string_literal: true

require_relative '../lib/people.rb'

people = People.new.people

p people.count

# Selects all females from list

female = people.select { |person| person.gender == 'f' }

# displays the count of females
p female.count

# selects by age and counts those younger than 27

age_limit = people.select { |person| person.age < 27 }

p age_limit.count

# selects by age and counts those older than 27

older_than = people.select { |person| person.age > 27 }

p older_than.count
