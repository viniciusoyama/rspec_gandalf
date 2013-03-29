module RSpecGandalf
  module Matchers  
    class Pass
      def matches?(described_object)
        @described_class = described_object.class
        shall_pass?()
      end

      def failure_message_for_should
        if @class_ancestors_contains_balrog
          "RUN YOU FOOL. You cannot trick me. \nATTENTION: #{@described_class.name} is a flame of Udun and SHALL NOT PASS"
        else
          "ATTENTION: #{@described_class.name} is a flame of Udun and SHALL NOT PASS."
        end
      end

      def failure_message_for_should_not
        "Wow. Calm down. You aren't a Balrog and shall pass. But be warned: One does not simply shall pass the test."
      end

      def shall_pass?
        !is_balrog?()
      end

      def is_balrog?
        class_name_contains_balrog = !!(@described_class.name.match(/balrog/i))
        @class_ancestors_contains_balrog = @described_class.ancestors.reduce(class_name_contains_balrog) { |mem, class_name| 
          (mem || !!(class_name.name.match(/balrog/i)))
        }
      end
    end

    def pass
      Pass.new
    end
  end
end
