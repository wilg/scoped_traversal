module ScopedTraversal
  class Railtie < Rails::Railtie
    initializer 'scoped_traversal.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end