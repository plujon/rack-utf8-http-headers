module Rack
  class Utf8HttpHeaders

    def initialize(app)
      @app = app
    end

    def call(env)
      env.each do |k, v|
        next unless k.start_with?('HTTP_')
        if 'ASCII-8BIT' == v.encoding.name
          v.force_encoding 'UTF-8'
          env.delete(k) if !v.valid_encoding?
        end
      end
      @app.call(env)
    end

  end
end
