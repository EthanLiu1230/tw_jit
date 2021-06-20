class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :articles, foreign_key: 'author_id', dependent: :delete_all

  def name
    email.split('@')[0]
  end
end
