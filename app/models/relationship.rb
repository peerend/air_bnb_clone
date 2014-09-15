class Relationship < ActiveRecord::Base

  belongs_to :space
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :number_of_days, presence: true

end
