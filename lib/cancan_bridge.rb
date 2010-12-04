module ActiveScaffold
 module CancanBridge
   def authorized_for?(options = {})
     can? options[:crud_type].to_sym, active_scaffold_config.model
   end
 end
end