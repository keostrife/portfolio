class AdminController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "13051992"#, except: :index
  def new
  end
end
