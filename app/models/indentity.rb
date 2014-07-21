class Indentity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    indentity = find_by(provider: auth.provider, uid: auth.uid)
    indentity = create(uid: auth.uid, provider: auth.provider) if indentity.nil?
    indentity
  end
end