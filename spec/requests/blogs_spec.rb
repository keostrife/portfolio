require 'spec_helper'

describe "Blogs" do
  describe "Blog Mark up Content" do
  	subject {page}
  	before {visit blog_path}
  	it {should have_content('seo')}
  	it {should have_selector('title', text: 'BLOG - Keo Strife Portfolio')}
  end
end
