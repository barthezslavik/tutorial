class SnippetsController < InheritedResources::Base
  def update
    update! { snippets_path }
  end
end
