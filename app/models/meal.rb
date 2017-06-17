class Meal < ApplicationRecord
  require 'fuzzystringmatch'
  belongs_to :school
  belongs_to :kind
  belongs_to :age

def distance
  my_distance = FuzzyStringMatch::JaroWinkler.create( :native )
  my_distance.getDistance( self.planned.split(',').sort.join(','),self.served.split(',').sort.join(',') )
end

  # def levenshtein_distance
  #   String::Similarity.levenshtein_distance(self.planned, self.served)
  # end
end
