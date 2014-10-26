require "goq/cinch_plugin/version"

module Goq
  class CinchPlugin
    include Cinch::Plugin

    match(/^goq list/, method: :list, use_prefix: false)

    def list(m)
      list = `goq --list test`
      m.reply list
    end
  end
end
