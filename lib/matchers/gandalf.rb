# coding: utf-8

RSpec::Matchers.define :pass do
  match do |described_object|
    shall_pass?(described_object)
  end

  failure_message_for_should do |described_object|

    if class_ancestors_contains_balrog?(described_object.class)
      "RUN YOU FOOL. Your disguise doesn't trick me. \nATTENTION: #{described_object.class.name} is a flame of Udun and SHALL NOT PASS"
    else
      "ATTENTION: #{described_object.class.name} is a flame of Udun and SHALL NOT PASS."
    end
  end

  failure_message_for_should_not do |actual|
    "Wow. Calm down. You aren't a Balrog and shall pass. But be warned: One does not simply shall pass the test."  
  end

  def shall_pass?(described_object)
    !is_balrog?(described_object.class)
  end

  def is_balrog?(described_class)
    class_name_contains_balrog = !!(described_class.name.match(/balrog/i))
    class_name_contains_balrog || class_ancestors_contains_balrog?(described_class)
  end

  def class_ancestors_contains_balrog?(described_class)
    valid_ancestors = described_class.ancestors[1..(described_class.ancestors.size)]
    valid_ancestors.reduce(false) { |mem, class_name| 
      (mem || !!(class_name.name.match(/balrog/i)))
    }
  end
end

# module RSpecGandalf
#   module Matchers  
#     class Pass
#       def matches?(described_object)
#         @described_class = described_object.class
#         shall_pass?()
#       end

#       def failure_message_for_should
#         if @class_ancestors_contains_balrog
#           "RUN YOU FOOL. You cannot trick me. \nATTENTION: #{@described_class.name} is a flame of Udun and SHALL NOT PASS"
#         else
#           "ATTENTION: #{@described_class.name} is a flame of Udun and SHALL NOT PASS."
#         end
#       end

#       def failure_message_for_should_not
#         "Wow. Calm down. You aren't a Balrog and shall pass. But be warned: One does not simply shall pass the test."
#       end

#       def shall_pass?
#         !is_balrog?()
#       end

#       def is_balrog?
#         class_name_contains_balrog = !!(@described_class.name.match(/balrog/i))
#         @class_ancestors_contains_balrog = @described_class.ancestors.reduce(class_name_contains_balrog) { |mem, class_name| 
#           (mem || !!(class_name.name.match(/balrog/i)))
#         }
#       end
#     end

#     def pass
#       Pass.new
#     end
#   end
# end
