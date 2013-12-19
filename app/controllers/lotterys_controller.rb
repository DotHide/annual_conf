class LotterysController < ApplicationController
  def home
    @users = User.all
  end
end
