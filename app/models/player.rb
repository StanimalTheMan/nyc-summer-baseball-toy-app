class Player < ApplicationRecord
    has_one :batting
    has_one :pitching
end
