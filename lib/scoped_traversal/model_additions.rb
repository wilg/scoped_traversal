module ScopedTraversal
  module ModelAdditions

    def traverse_by(scope, options = {})
        
      if options[:namespace] == true
        next_method_name       = "next_#{scope}"
        previous_method_name   = "previous_#{scope}"
      elsif options[:namespace]
        next_method_name       = "next_#{options[:namespace]}"
        previous_method_name   = "next_#{options[:namespace]}"
      else
        next_method_name       = "next"
        previous_method_name   = "previous"
      end

      define_method next_method_name do
        list = self.class.try(scope.to_sym).all
        list[list.index(self) + 1]
      end
    
      define_method previous_method_name do
        list = self.class.try(scope.to_sym).all
        list[list.index(self) - 1]
      end
    
    end 

  end
end
