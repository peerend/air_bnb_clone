require 'rails_helper'

describe Relationship do

  it { should belong_to :space }
  it { should belong_to :user }
  it { should validate_presence_of :start_date }
  it { should validate_presence_of :end_date }
  it { should validate_presence_of :number_of_days }

end
