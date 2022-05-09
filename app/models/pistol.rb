class Pistol < ApplicationRecord
end

def carry
  update(carry: true)
end

def not_carry
    update(carry: false)
end
