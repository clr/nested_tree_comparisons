require 'rubygems'
require 'activerecord'
require 'vendor/acts_as_nested_set/lib/active_record/acts/nested_set'
require 'vendor/acts_as_nested_set/init.rb'

ActiveRecord::Base.establish_connection(
    :adapter  => "postgresql",
    :username => "rails",
    :database => "nested_tree_comparison"
  )

class Node < ActiveRecord::Base
  acts_as_nested_set( :left_column => 'left_id', :right_column => 'right_id' )
end
