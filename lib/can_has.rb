module CanHas
  def can_has?(cheezburger = :cheezburger)
    case cheezburger
    when :cheezburger
      true
    else
      if block_given?
        yield
      else
        rand(2) > 0
      end
    end
  end
end

Object.send :include, CanHas