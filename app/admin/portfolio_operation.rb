ActiveAdmin.register PortfolioOperation, :as => "Operation" do
  menu :parent 	=> "Portfolio"

  actions :all, :except => [:show]

  index :as => :reorder_table do
    column "" do |obj|
      image_tag obj.image.thumbnail
    end
    column :operation do |obj|
      "<p>#{link_to(obj.title, edit_admin_operation_path(obj))}</p>#{obj.description}".html_safe
    end

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title, :required => true
      f.input :description, :as => :text, :required => true, :input_html => {:class => "redactor"}
      f.input :image, :as => :file, :required => true
    end
    f.buttons
  end

  collection_action :reorder, :method => :put do
    render :text => resource_class.reorder_objects(params[:ids])
  end
end
