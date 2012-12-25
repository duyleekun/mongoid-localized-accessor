require "mongoid-localized-accessor/version"

module Mongoid
  module Localized
    module Accessor
      def method_missing method
        if (match_data = method.to_s.match(/(?<method>.*)_(?<lang>\w\w)/))
          method = match_data['method']
          lang = match_data['lang']
          if self.respond_to? method.to_sym
            if self.try(:[],method.to_sym)
              self.try(:[],method.to_sym).try(:[],lang)
            else
              if self.try(method.to_sym)
                self.try(method.to_sym).try(:[],lang)
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
