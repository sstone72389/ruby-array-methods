# frozen_string_literal: true

fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

# calculates the product of elements of fibs (excluding zero).
# whole thing shorthand
fibs.select(&:positive?).reduce(1, :*)
# whole thing written out
fibs.select { |num|  num.positive? }.reduce(1, :*)

# selects only positive numbers from array
fibs.select! { |num|  num.positive? }

# shorthand for product
fibs.reduce(1, :*)

# Method written out for above for reduce (inject is the same)
fibs.inject(1) { |product, n| product * n }



# calculates sum of odd elements
# whole thing shorthand
fibs.select(&:odd?).reduce(1, :+)
# whole thing written out
fibs.select { |num|  num.odd? }.reduce(0, :+)

# calculates sum of odd elements
# fisrt selects them
fibs.select! { |num|  num.odd? }

# then sums them (shorthand)
fibs.reduce(0, :+)

# entire block showing the aboves functionality
fibs.reduce(0) { |acc, num| acc + num }




# calculates product of even elements
# whole thing
fibs.select { |num|  num.even? and num.positive?}.reduce(1, :*)

# calculates product of even elements
# fisrt selects them
fibs.select! { |num|  num.even? and num.positive?}

#shorthand
fibs.reduce(1, :*)

# Method written out for above for reduce (inject is the same)
fibs.inject(1) { |product, n| product * n }
