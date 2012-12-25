require "mongoid-localized-accessor/version"

module Mongoid
  module Localized
    module Accessor
      def method_missing method
        if (org = method.to_s.split(/_\w\w$/)).length == 2
          if self.respond_to? org[0].to_sym
            if self.try(:[],org[0].to_sym)
              self.try(:[],org[0].to_sym).try(:[],org[1])
            else
              if self.try(org[0].to_sym)
                self.try(org[0].to_sym).try(:[],org[1])
              end
            end
          else
            super
          end
        else
          super
        end
      end
    end
  end
end
