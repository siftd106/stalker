require 'spec_helper'

describe Roleship do

  it { should belong_to(:role) }
  it { should belong_to(:user) }
end