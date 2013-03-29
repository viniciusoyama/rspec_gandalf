# coding: utf-8

require 'matchers/gandalf'
require 'rspec'

class Object
  def shall(*args)
    should(*args)
  end

  def shall_not(*args)
    should_not(*args)
  end
end