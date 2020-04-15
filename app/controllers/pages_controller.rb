class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end
end
