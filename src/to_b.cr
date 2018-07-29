class Object
  def to_b
    if self.is_a? Bool
      return self
    elsif self.nil?
      return false
    elsif self.is_a? Int
      return self > 0
    elsif self.is_a? Float
      return self > 0.0
    elsif self.is_a? String
      return false if self == ""
      begin
        return to_b(self.to_i) if self.to_i.to_s == self
      rescue
      end
      begin
        return to_b(self.to_f) if self.to_f.to_s == self
      rescue
      end
      return true
    elsif self.is_a? Object
      return true
    end
    !!self
  end
end
