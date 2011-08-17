Product.class_eval do
  
  def stock_status
    has_stock? ? "in_stock_#{in_stock_status}" : "out_of_stock_#{out_of_stock_status}"
  end
  
  def stock_status_message
    if has_stock?
      in_stock_status_message
    else
      out_of_stock_status_message
    end    
  end
  
  def in_stock_status_message
    I18n.t('simple_availability.in_stock')[in_stock_status]
  end
  
  def out_of_stock_status_message
    I18n.t('simple_availability.out_of_stock')[out_of_stock_status]
  end
  
  def stock_status_options
    { 
      :in_stock => { 
        :msg => in_stock_status_message, 
        :status => in_stock_status
      },
      :out_of_stock => { 
        :msg => out_of_stock_status_message,
        :status => out_of_stock_status
      }
    }
  end
  
  def self.in_stock_options
    arr = I18n.t('simple_availability.in_stock', :locale => Spree::Config[:default_locale])
    arr.each_with_index.map { |x,i| [x, i] }
  end
  
  def self.out_of_stock_options
    arr = I18n.t('simple_availability.out_of_stock', :locale => Spree::Config[:default_locale])
    arr.each_with_index.map { |x,i| [x, i] }
  end
  
end
