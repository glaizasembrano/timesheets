class HomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
  end

  def secret
  end
end