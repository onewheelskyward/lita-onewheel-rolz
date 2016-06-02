require 'rest-client'

module Lita
  module Handlers
    class OnewheelRolz < Handler
      route /roll (.*)$/i, :roll, command: true
      route /roll$/i, :roll_default, command: true

      def roll_default(response)
        response.reply make_roll('d20')
      end

      def roll(response)
        response.reply make_roll(response.matches[0][0])
      end

      def make_roll(dice)
        Lita.logger.debug "lita-onewheel-rolz: rolling #{dice}"
        result = 'wat'
        input = ''

        roll_data = RestClient.get "https://rolz.org/api/?#{dice}"

        roll_data.split(/\n/).each do |line|
          if line.match /result/
            result = line[/(\d+)$/]
          end
          if line.match /input/
            input = line[/(\w+)$/]
          end
        end

        say = "You rolled a #{result}!"
        if input.match(/d20/i) and result == 1.to_s
          say += "  And you dropped your keyboard."
        end

        say
      end


      Lita.register_handler(self)
    end
  end
end