# frozen_string_literal: true

require "jekyll"
require "jekyll_plugin_logger"
require_relative "jekyll_nth/version"

module JekyllPluginNthName
  PLUGIN_NAME = "jekyll_nth"
end

module Jekyll
  # @return nth item of an array, origin 1
  def nth(array, index)
    abort "nth error: array was empty." if array.nil?
    abort "nth error: array has only #{array.length} items, but item #{index} was requested." if array.length < index.abs

    array[index]
  end

  info { "Loaded #{JekyllPluginNthName::PLUGIN_NAME} v#{JekyllNth::VERSION} plugin." }
end

Liquid::Template.register_filter(Jekyll)
