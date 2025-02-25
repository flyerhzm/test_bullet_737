class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :from_user, class_name: 'User'
  belongs_to :to_user, class_name: 'User'

  has_paper_trail meta: { extra: :extra }, versions: { class_name: 'CommentVersion' }

  def extra
    JSON.dump({ from_user_name: from_user.name, from_user_email: from_user.email, to_user_name: to_user.name, to_user_email: to_user.email })
  end
end
