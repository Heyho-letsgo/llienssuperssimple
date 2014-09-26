class Sousgroupe < ActiveRecord::Base
  belongs_to :principalgroupe
  has_many :agences
end
