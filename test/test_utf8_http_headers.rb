# encoding:utf-8

require 'rack/Utf8HttpHeaders'
require 'minitest/autorun'

class Mock
  attr_reader :env
  def call(env)
    @env = env
    [200, {}, 'ok']
  end
end

describe Rack::Utf8HttpHeaders do
  describe 'Utf8HttpHeaders' do
    it 'works' do
      h = {
        'HTTP_FOO' => "foo\xD0".force_encoding('ASCII-8BIT'),
        'HTTP_BAR' => 'bar'
      }
      x = {'HTTP_BAR' => h['HTTP_BAR']}
      mock = Mock.new
      app = Rack::Utf8HttpHeaders.new(mock)
      app.call(h.clone)
      assert_equal mock.env, x
    end
  end
end
