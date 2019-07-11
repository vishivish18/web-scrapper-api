# spec/models/todo_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Dump, type: :model do
  # Validation tests
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:tagtype) }
  it { should validate_presence_of(:content) }
end