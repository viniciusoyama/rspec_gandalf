module RSpecGandalf
  module Matchers  
    class Pass
      def matches?(described_class)
        @described_class = described_class
        shall_pass?()
      end

      def failure_message_for_should
        "ATTENTION: #{@described_class.to_s} is a flame of Udun and SHALL NOT PASS."
      end

      def failure_message_for_should_not
        "Wow. Calm down man. You aren't a Balrog. You shall pass. But be warned: One does not simply shall pass the test."
      end

      def shall_pass?
        !is_balrog?()
      end

      def is_balrog?
        !!(@described_class.to_s.match(/balrog/i))
      end
    end

    def pass
      Pass.new
    end
  end
end
