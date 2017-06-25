module Zendesk
  module CsvScrubber
    def self.scrub_output(value)
      # escape macro operators at the beginning of strings to
      # prevent malicious macro injection, e.g. (=, +, -, @)
      value = "'#{value}" if macro_string?(value)
      value
    end

    def self.macro_string?(value)
      value.is_a?(String) && value.size > 1 && value.start_with?("=", "+", "-", "@")
    end
  end
end
