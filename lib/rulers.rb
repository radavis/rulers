require "rulers/version"
require "rulers/array"
require "rulers/routing"
require "rulers/logging"

module Rulers
  class Application
    def call(env)
      begin
        class_name, action = get_controller_and_action(env)
        controller = class_name.new(env)
        text = controller.send(action)
        [200, {"Content-Type" => "text/html"}, [text.to_s]]
      rescue StandardError => error
        log(error)
        return [404, {"Content-Type" => "text/html"}, ["Not Found"]]
      end
    end
  end

  class Controller
    attr_reader :env

    def initialize(env)
      @env = env
    end
  end
end
