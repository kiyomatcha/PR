class PagesController < ApplicationController
before_action :sign_in_required, only: [:show]

  def home
  end

  def about
  end

  def help
  end

  def terms
  end

  def privacy
  end

  def show
  end
end
