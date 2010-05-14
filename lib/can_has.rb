module CanHas
  def can_has?(cheezburger = :cheezburger)
    case cheezburger
    when :cheezburger
      true
    else
      rand(2) > 0
    end
  end
end

Object.send :include, CanHas