class Taste < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '超甘口' },
    { id: 2, name: '甘口' },
    { id: 3, name: 'やや甘口' },
    { id: 4, name: 'やや辛口' },
    { id: 5, name: '辛口' },
    { id: 6, name: '超辛口' },
  ]

  include ActiveHash::Associations
  has_many :sakes
end