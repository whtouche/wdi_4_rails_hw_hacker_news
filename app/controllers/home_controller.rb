class HomeController < ApplicationController
  def show
    @articles = Article.all
  end
end
