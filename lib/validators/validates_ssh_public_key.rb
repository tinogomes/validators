module ActiveModel
  module Validations
    class SshPublicKeyValidator < EachValidator
      def validate_each(record, attribute, value)
        record.errors.add(attribute, :invalid_ssh_public_key,
          message: options[:message],
          value: value
        ) unless SSHKey.valid_ssh_public_key?(value)
      end
    end

    module ClassMethods
      # Validates whether or not the specified CNPJ is valid.
      #
      #   class User < ActiveRecord::Base
      #     validates_ssh_public_key :key
      #   end
      #
      def validates_ssh_public_key(*attr_names)
        require "sshkey"
        validates_with SshPublicKeyValidator, _merge_attributes(attr_names)
      rescue LoadError
        fail "sshkey is not part of the bundle. Add it to Gemfile."
      end
    end
  end
end
