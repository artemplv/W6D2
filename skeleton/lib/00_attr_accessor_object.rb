class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      if name.to_s[0] == "@"
        name = name.to_s[1..-1]
      end
      define_method(name.to_sym) { self.instance_variable_get("@#{name}") }
      define_method("#{name.to_sym}=") { |val| self.instance_variable_set("@#{name}",val)}
    end
  end
end
