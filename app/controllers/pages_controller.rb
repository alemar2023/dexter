class PagesController < ApplicationController
  def home
    @q = User.ransack(params[:q])
    @users = @q.result.limit(16).order(:created_at)
  end

  def about
  end
end
