# encoding: utf-8

require 'simplecov'
SimpleCov.start
SimpleCov.minimum_coverage 100

require 'fastlane-sirp'

# Monkey-patch Client and Verifier classes for testing convenience
module SIRP
  class Verifier
    def set_aa(val)
      @A = val
    end

    def set_b(val)
      @b = val
    end

    def set_salt(val)
      @salt = val
    end
  end
end

module SIRP
  class Client
    def set_a(val)
      @a = val
    end

    def set_h_amk(val)
      @H_AMK = val
    end
  end
end
