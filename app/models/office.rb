class Office < ApplicationRecord
  has_and_belongs_to_many :professor
end
