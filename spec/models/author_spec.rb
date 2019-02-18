require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should have_many(:books) }
  it { should have_many(:genres) }
  
  # it { should validate_presence_of(:name) }
  # it { should validate_presence_of(:bio) }
  # it { should validate_presence_of(:yod) }
end
