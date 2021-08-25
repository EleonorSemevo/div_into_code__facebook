module PostsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_posts_path
    else
      post_path
    end
  end
  def is_favorite?(id, current_user)
     current_user.favorites.find_by(post_id: id).present?
  end
end
