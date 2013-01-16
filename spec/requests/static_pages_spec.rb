require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  let(:base_title) { "Stock App" }
  
  describe "Home page" do
    before { visit root_path }
	
	it { should have_selector('title', text: base_title) }   
  end
  
  it "should have the right links on the layout" do
    visit root_path
	#click_link "Stock Data"
	#page.should have_selector 'title', text: full_title('Stock Data')
	click_link "Add Data"
	page.should { have_selector('title', text: full_title('Add Data')) }
  end
end

