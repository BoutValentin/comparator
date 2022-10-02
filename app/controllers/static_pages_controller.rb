class StaticPagesController < ApplicationController
  def home
   @comparators = ComparatorPost.order(created_at: :desc)[..3]
  end

  def about
  end

  def settings
  end
end
