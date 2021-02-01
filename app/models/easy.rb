class Easy < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '飲みやすい' },
    { id: 2, name: '普通' },
    { id: 3, name: 'クセがある' },
    { id: 4, name: 'クセがすごい' },
  ]

  include ActiveHash::Associations
  has_many :sakes
end