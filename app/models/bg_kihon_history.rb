class BgKihonHistory < ActiveRecord::Base
  belongs_to :bg_kihon, foreign_key: "number", primary_key: "number"
end
