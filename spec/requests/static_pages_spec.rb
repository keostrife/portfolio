require 'spec_helper'

describe "StaticPages" do
  subject {page}

  describe "Home Page" do
  	before {visit '/static_pages/home'}

  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'HOME - Keo Strife Portfolio')}
  end

  describe "Lab Page" do
  	before {visit '/static_pages/lab'}

  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'LAB - Keo Strife Portfolio')}
  end

  describe "Contact Page" do
  	before {visit '/static_pages/contact'}

  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'CONTACT - Keo Strife Portfolio')}
  end

end
