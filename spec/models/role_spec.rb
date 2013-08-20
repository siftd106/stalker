require 'spec_helper'

describe Role do
  it { should have_many(:roleships) }
  it { should have_many(:users).through(:roleships) }
end
