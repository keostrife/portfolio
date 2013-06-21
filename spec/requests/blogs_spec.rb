require 'spec_helper'

describe "Blogs" do
  describe "Blog Mark up Content" do
  	subject {page}

  	describe "Blog Main Page" do
	  	before {visit blog_path}
	  	it {should have_content('seo')}
	  	it {should have_selector('title', text: 'BLOG - Keo Strife Portfolio')}
  	end

  	describe "Sign Up Page" do
	  	before {visit signup_path}
	  	it {should have_content('seo')}
	  	it {should have_selector('title', text: 'SIGN UP - Keo Strife Portfolio')}
  	end

  end
end
