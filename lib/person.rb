class Person
  #your code here
  def initialize(attr_methods)
    attr_methods.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end