class Sourness < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'ない' },
    { id: 2, name: '少ない' },
    { id: 3, name: '少しある' },
    { id: 4, name: '少し強い' },
    { id: 5, name: '強い' },
  ]

  include ActiveHash::Associations
  has_many :sakes
end
