class ApplicationController < ActionController::Base
  include Authentication

  # helper :all # include all helpers, all the time
  protect_from_forgery
end
