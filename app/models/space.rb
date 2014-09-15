class Space < ActiveRecord::Base

  belongs_to :user
  validates :address, presence: true
  validates :day_fee, presence: true
  validates :description, presence: true

end
