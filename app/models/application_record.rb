class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  def current_user
    User.find_by(id: session[:user_id])
  end
end
