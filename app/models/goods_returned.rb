class GoodsReturned < ActiveRecord::Base
  self.table_name = "CRM.GOODS_RETURNEDS"
  self.sequence_name = "CRM.GOODS_RETURNEDS_SEQ"

  attr_accessible :doc_date, :doc_due_date, :doc_status, :doc_total,
                  :doc_type, :employee_id, :remarks, :goods_returned_items_attributes

  belongs_to :employee
  has_many :goods_returned_items, :dependent => :destroy
  has_many :items, :through => :goods_returned_items

  accepts_nested_attributes_for :goods_returned_items

  validates_presence_of :employee
end
