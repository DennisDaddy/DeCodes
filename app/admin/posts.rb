ActiveAdmin.register Post do
  
  permit_params :title, :content, :category_id
  
end
