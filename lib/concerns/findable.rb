module Findable
      def self.find_by_name(name)
    self.all.detect{|value| value.name}
  end
end