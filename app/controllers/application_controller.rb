class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, :only => [:index, :show]
  skip_authorize_resource :only => [:index, :show]

end
