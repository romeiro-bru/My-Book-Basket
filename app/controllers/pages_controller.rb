class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_before_action :authenticate_user!, only: :index

  def home
  end
end
