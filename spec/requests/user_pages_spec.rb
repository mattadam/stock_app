require 'spec_helper'

describe "UserPages" do
 
  subject { page }
  
  describe "Stocks add page" do
    before { visit add_path }
	
	it { should have_selector('h1', 	text: 'Add') }
	it { should have_selector('title', text: 'Add' ) }
  end
end
