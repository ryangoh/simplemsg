require "simplemsg/version"

require 'thor'

module Simplemsg

    class Application < Thor

      desc 'hello NAME', 'Display greeting with given NAME'
      option :wish
      def hello(name = "Joe")
        puts "Hello #{name}"
        puts "My Wish: #{options[:wish]}" if options[:wish]
      end
    end

end
