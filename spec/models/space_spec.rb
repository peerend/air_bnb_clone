require 'rails_helper'

describe Space do
  it {should belong_to :user }
  it {should validate_presence_of :address }
  it {should validate_presence_of :day_fee }
  it {should validate_presence_of :description}
end
