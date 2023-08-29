class Comment < ApplicationRecord
  # Association: This defines an association between the Comment model and the User & post model.
  # It specifies that each comment belongs to an author (user) & post. The class_name option is
  # used to specify the class name of the associated model (in this case, 'User' & 'Post').
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  # Attribute - This sets up an attribute for the Comment model called text, with the
  # data type of :text. It's a way to explicitly define an attribute and its data type.
  attribute :text, :text

  # Callbacks: This callback is triggered after a new comment is created/destroyed(deleted).
  # It calls the update_post_comments_counter method to update the comments counter for
  # the associated post
  after_create :increase_post_comments_counter
  after_destroy :decrement_post_comments_counter

  # Methods - ustom method defined within the Comment model. It's responsible for updating
  # the comments_counter attribute of the associated post. It does so by querying the
  # total count of comments for the post and updating the counter attribute.
  def increase_post_comments_counter
    post.increment!(:comments_counter)
  end

  def decrement_post_comments_counter
    post.decrement!(:comments_counter)
  end
end
