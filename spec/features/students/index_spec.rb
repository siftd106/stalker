require 'spec_helper'

describe 'student index page' do
  subject { page }
  
  before { visit students_path }

end