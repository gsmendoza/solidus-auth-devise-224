# frozen_string_literal: true

module Spree
  module Admin
    module LocaleControllerDecorator
      # todo send pull request to solidus - unauthorized user can't change language
      def self.prepended(base)
        base.skip_before_action :authorize_admin, only: [:set]
      end

      Spree::Admin::LocaleController.prepend(self)
    end
  end
end
