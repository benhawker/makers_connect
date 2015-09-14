require 'rails_helper'

RSpec.describe Employer, type: :model do
  it {should belong_to :user }
end
