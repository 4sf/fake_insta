class HomeController < ApplicationController
  def index
    # erb :index 생략 가능
  end

  def hello
    @name = params[:name]
  end

  def lotto
    @lotto = (1..45).to_a.sample(6)
  end

  def lunch
    @lunch = ["탕수육", "짬뽕", "짜장면"].sample
  end

  def search
  end
end
