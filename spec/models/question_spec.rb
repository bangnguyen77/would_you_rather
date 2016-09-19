require 'rails_helper'

describe Question do
  it { should validate_presence_of :statement }
  it { should validate_presence_of :answer1 }
  it { should validate_presence_of :answer2 }
end
