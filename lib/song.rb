require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
     extend Memorable::ClassMethods
include Memorable::InstanceMethods
  @@songs = []

 

  def self.find_by_name(name)
    self.class.all.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  
end
