require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should belong_to(:author) }
  it { should belong_to(:genre) }

  # it { should validate_presence_of(:author_id) }
  # it { should validate_presence_of(:genre_id) }
  # it { should validate_presence_of(:eng_title) }
  # it { should validate_presence_of(:arabic_title) }
  # it { should validate_presence_of(:about) }
  # it { should validate_presence_of(:harakat) }
  # it { should validate_presence_of(:num_pages) }
  # it { should validate_presence_of(:translator) }
  # it { should validate_presence_of(:language) }
end
