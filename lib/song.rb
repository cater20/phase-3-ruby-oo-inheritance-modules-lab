require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/paramable'
require_relative './concerns/findable'

class Song
  extend Memorable::ClassMethods
include Memorable::InstanceMethods
extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []



  def self.all
    @@songs
  end

  

  def artist=(artist)
    @artist = artist
  end

  #def to_param
   # name.downcase.gsub(' ', '-')
  #end
end
