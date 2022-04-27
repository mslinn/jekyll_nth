# frozen_string_literal: true

require "jekyll_plugin_logger"
require "liquid"
require_relative "jekyll_nth/version"

module JekyllPluginNthName
  PLUGIN_NAME = "jekyll_nth"
end

module ArrayManipulation
  # @return nth item of an array, origin 1
  def nth(array, index)
    abort "jekyll_nth error: array passed to nth was empty." if array.nil? || array.empty?
    abort "jekyll_nth error: array passed to nth has only #{array.length} items, but item #{index} was requested." if array.length < index.abs

    array[index]
  end

  def tail(array)
    abort "jekyll_nth error: array passed to tail was empty." if array.nil? || array.empty?

    array[1..]
  end
end

PluginMetaLogger.instance.info { "Loaded #{JekyllPluginNthName::PLUGIN_NAME} v#{JekyllNthVersion::VERSION} plugin." }
Liquid::Template.register_filter(ArrayManipulation)
