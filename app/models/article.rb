class Article < ApplicationRecord
  paginates_per 10
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
end
