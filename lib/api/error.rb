module Api
  module Error
    class Base < ::StandardError
      def initialize(*args)
        if args.length == 0
          t_key = self.class.name.underscore.gsub(/\//, '.')
          super t_key
        else
          super(*args)
        end
      end
    end

    module API
      module Base
        class Unknown < Api::Error::Base; end
        class CreateFailed < Api::Error::Base; end
        class UpdateFailed < Api::Error::Base; end
        class DeleteFailed < Api::Error::Base; end
      end

      module User
        class InvalidConfirmationToken < Api::Error::Base; end
      end
    end
  end
end
