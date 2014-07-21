class Collection < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  belongs_to :wanted_book
end
