class Genre < ActiveRecord::Base
  has_many :categorizations
  has_many :books, through: :categorizations
end
