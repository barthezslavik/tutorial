class SnippetsController < InheritedResources::Base
  def index
    @snippets = if params[:more]
      Snippet.where("id > #{params[:more]}")
    else
      Snippet.all
    end
  end

  def update
    update! { snippets_path }
  end
end
