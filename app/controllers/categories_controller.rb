class CategoriesController < InheritedResources::Base
  def create
    create! { categories_path }
  end
end
