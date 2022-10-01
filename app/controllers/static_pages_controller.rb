class StaticPagesController < ApplicationController
  def home
    @comparator = ComparatorPost.all.last
  end

  def about
  end

  def settings
  end
end
