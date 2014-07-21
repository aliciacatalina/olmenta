class WantedBook < Book
  belongs_to :book
  has_many :wanteds
  has_many :users, through: :wanteds
end
