class GoodsReceivedItem < ActiveRecord::Base
  set_table_name "CRM.GOODS_RECEIVED_ITEMS"
  self.sequence_name = "CRM.GOOD_RECEIVED_ITEMS_SEQ"

  attr_accessible :currency, :goods_received_id, :grand_total, :grand_total_foreign, :item_id, :line_total, :price,
                  :quantity, :rate, :remarks, :tax_rate, :tax_total, :tax_total_foreign, :total_foreign

  belongs_to :goods_received
  belongs_to :item
end
