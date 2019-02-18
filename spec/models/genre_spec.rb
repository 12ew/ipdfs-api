require 'rails_helper'

RSpec.describe Genre, type: :model do
  it { should have_many(:books) }
  it { should have_many(:authors) }
  
  # it { should validate_presence_of(:name) }
end
