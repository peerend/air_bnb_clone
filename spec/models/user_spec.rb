require 'rails_helper'

describe User do

  it { should validate_presence_of :email }
  it { should validate_presence_of :full_name }

end


# RSpec.describe User, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
