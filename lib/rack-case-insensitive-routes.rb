require "rack-case-insensitive-routes/version"

module Rack
  class CaseInsensitiveRoutes
    def initialize(app)
      @app = app
    end

    def call(env)
      unless env['PATH_INFO'] =~ /assets/
        env['PATH_INFO'] = env['PATH_INFO'].downcase
      end
      @app.call(env)
    end
  end
end
