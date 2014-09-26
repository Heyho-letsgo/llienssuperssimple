class Agence < ActiveRecord::Base
  belongs_to :principalgroupe
  belongs_to :sousgroupe
end
