class Principalgroupe < ActiveRecord::Base
  has_many :sousgroupes
  has_many :agences
end
