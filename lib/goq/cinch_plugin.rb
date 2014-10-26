require "goq/cinch_plugin/version"

module Goq
  class CinchPlugin
    include Cinch::Plugin

    match(/^goq (.+)/, method: :query, use_prefix: false)
    match(/^goq list/, method: :list, use_prefix: false)

    def query(m, query)
      result = `goq #{config[:target]} #{query}`
      result = "Too many much..." if result.count("\n") > config[:limit]
      m.reply result
    end

    def list(m)
      list = `goq --list #{config[:target]}`
      m.reply list
    end
  end
end
