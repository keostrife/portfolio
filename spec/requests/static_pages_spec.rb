require 'spec_helper'

describe "StaticPages" do
  subject {page}

  describe "Root Page" do
  	before {visit root_path}

  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'HOME - Keo Strife Portfolio')}
  end

  describe "Home Page" do
  	before {visit home_path}

  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'HOME - Keo Strife Portfolio')}
  end

  describe "Lab Page" do
  	before {visit lab_path}

  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'LAB - Keo Strife Portfolio')}
  end

  describe "Contact Page" do
  	before {visit contact_path}

  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'CONTACT - Keo Strife Portfolio')}
  end

end
