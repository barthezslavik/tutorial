class CommentsController < InheritedResources::Base
  def create
    create! { @comment.snippet }
  end
end
