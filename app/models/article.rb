class Article < ApplicationRecord
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  before_save :update_publish_date, if: :is_published?

  private

  def update_publish_date
    self.publish_date = DateTime.current
  end
end
