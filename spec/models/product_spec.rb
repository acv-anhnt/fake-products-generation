require 'rails_helper'

RSpec.describe Product, type: :model do
    it { should belong_to(:category) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
end