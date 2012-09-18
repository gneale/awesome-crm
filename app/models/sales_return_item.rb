class SalesReturnItem < ActiveRecord::Base
  set_table_name "CRM.SALES_RETURN_ITEMS"
  self.sequence_name = "CRM.SALES_RETURN_ITEMS_SEQ"

  attr_accessible :currency, :sales_return_id, :disc_rate, :disc_total, :grand_total, :item_id, :line_num,
                  :line_status, :line_total, :price, :quantity, :rate, :remarks, :tax_rate, :tax_total

  belongs_to :sales_return
end
