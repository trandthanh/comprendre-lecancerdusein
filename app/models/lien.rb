class Lien < ApplicationRecord
  belongs_to :question, optional: true
  belongs_to :quotidien, optional: true
  belongs_to :entendu, optional: true
end
