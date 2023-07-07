class Shortcut
  include Mongoid::Document
  include Mongoid::Timestamps
  field :short, type: String
  field :long, type: String
end
