Deface::Override.new(
  :virtual_path => "admin/products/_form",
  :name => "availability_message",
  :insert_bottom => "[data-hook='admin_product_form_right']",
  :partial => "admin/products/availability_form_elements",
  :disabled => false)
