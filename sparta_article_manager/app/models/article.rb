class Article < ApplicationRecord#::Base
  # Validation. There must be a title and body each time a post is going to be created
  # Title cannot be more than 140 characters long
 # validates :title, prescence: true, length: {maximum: 140}
 # validates :body, prescence: true
end
