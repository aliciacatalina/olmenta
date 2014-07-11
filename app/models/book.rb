class Book < ActiveRecord::Base
  has_many :collections
  has_many :users, through: :collections
  has_many :categorizations
  has_many :genres, through: :categorizations
end
