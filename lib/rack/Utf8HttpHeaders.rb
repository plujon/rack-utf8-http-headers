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
        if k.start_with?('HTTP_PLUCKEYE_B64_')
          v = Base64.urlsafe_decode64(v)
          v.force_encoding 'UTF-8'
          if v.valid_encoding?
            env[k.sub(/B64_/, '')] = v
            env.delete(k)
          end
        end
      end
      @app.call(env)
    end

  end
end
