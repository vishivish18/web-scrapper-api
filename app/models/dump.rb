class Dump < ApplicationRecord
  # validations
  validates_presence_of :url, :tagtype, :content
end