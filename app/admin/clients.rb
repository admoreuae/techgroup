ActiveAdmin.register Client do
  menu :parent 	=> "Corporation", :label => "Clients' Portfolio"

  actions :all, :except => [:show]
  
  index :as => :reorder_table do 
    column "" do |obj|
      image_tag(obj.image.thumbnail)
    end
    column :description do |obj|
      ( "<p> <strong> #{link_to(obj.title, edit_admin_client_path(obj))} </strong> </p>" +
        obj.description ).html_safe
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

  show :title => :title do
    h1 resource.title
    div resource.description
    div do
     img :src=>resource.image.thumbnail
    end
  end

  collection_action :reorder, :method => :put do
    render :text => resource_class.reorder_objects(params[:ids])
  end
end
