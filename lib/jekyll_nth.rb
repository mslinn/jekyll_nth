# frozen_string_literal: true

require "jekyll_plugin_logger"
require "liquid"
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
end

PluginMetaLogger.instance.info { "Loaded #{JekyllPluginNthName::PLUGIN_NAME} v#{JekyllNthVersion::VERSION} plugin." }
Liquid::Template.register_filter(Jekyll)
