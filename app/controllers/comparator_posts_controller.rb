class ComparatorPostsController < ApplicationController
  def show
    @comparaisons_posts = ComparatorPost.all
  end

  def random
    @comparator = ComparatorPost.all.sample(1).first
  end
end
