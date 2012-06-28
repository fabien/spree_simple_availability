Deface::Override.new(
  :virtual_path => "spree/admin/products/_form",
  :name => "availability_message",
  :insert_bottom => "[data-hook='admin_product_form_right']",
  :partial => "spree/admin/products/availability_form_elements",
  :disabled => false)
