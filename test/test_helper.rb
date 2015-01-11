require "rack/test"
require "test/unit"
require "pry"

dir = File.join(File.dirname(__FILE__), "..", "lib")
$LOAD_PATH.unshift File.expand_path(dir)

require "rulers"
