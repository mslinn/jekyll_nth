# frozen_string_literal: true

require "jekyll"
require_relative "jeykll_nth/version"
require "jekyll_plugin_logger"

module Jekyll
  # Returns item n of array, origin 1
  module Nth
    # @return nth item of an array, origin 1
    def nth(array, index)
      abort "nth error: array was empty." if array.nil?
      abort "nth error: array has only #{array.length} items, but item #{index} was requested." if array.length < index.abs

      array[index]
    end
  end
end

Liquid::Template.register_filter(Jekyll::Nth)

Jekyll.info "Loaded jeykll_nth plugin."
