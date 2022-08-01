require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Kid
  # # Lend this class all of the class methods of the MetaDancing module. "extend" == Class
  # extend MetaDancing
  # # Lend this class all of the instance methods of the Dance module. "include" == instance
  # include Dance

  # Refactor:
  extend FancyDance::ClassMethods     # "extend" == Class
  include FancyDance::InstanceMethods # "include" == instance

  attr_accessor :name

  def initialize name
    @name = name
  end
end