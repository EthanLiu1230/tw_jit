class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(is_published: true).or(scope.where(author_id: user.try(:id)))
    end
  end

  def new?
    user_owns_record?
  end

  def create?
    user_owns_record?
  end

  def show?
    user_owns_record? || @record.is_published?
  end

  def update?
    user_owns_record?
  end

  def destroy?
    user_owns_record?
  end

  private

  def user_owns_record?
    user == @record.author
  end
end
