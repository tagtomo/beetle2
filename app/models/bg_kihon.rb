class BgKihon < ActiveRecord::Base
  has_many :bg_kihon_histories, foreign_key: "number", primary_key: "number"
  has_many :bg_kazeis, foreign_key: "number", primary_key: "number"
  has_one :person,  foreign_key: "number", primary_key: "number"

  after_save :create_history #更新時（create,update時に履歴を作成する）

  private
  #履歴の書き出し
  def create_history
    if self.bg_kihon_histories.exists?
      history_no = {"history_no" => (self.bg_kihon_histories.last[:history_no].to_i + 1).to_s}
    else
      history_no = {"history_no" => "1"}
    end
    data_attributes = self.attributes
    #自動更新項目を除外
    data_attributes.except! "id","number","created_at","updated_at"
    #履歴番号を設定
    data_attributes.merge!(history_no)
    new_history = self.bg_kihon_histories.new(data_attributes)
    new_history.save
  end
end
