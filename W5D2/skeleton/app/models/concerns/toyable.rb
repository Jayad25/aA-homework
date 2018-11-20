module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
  end

  def receive_toy(name)
    na = self.toys.find(name: name)
    self.toys.create(name: name) unless na
# self.toys.find_or_create_by(name: name)
  end
end
