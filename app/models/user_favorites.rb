# == Schema Information
#
# Table name: user_favorites
#
#  id        :bigint           not null, primary key
#  recipe_id :bigint           not null
#  user_id   :bigint           not null
#
class UserFavorites < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
end
