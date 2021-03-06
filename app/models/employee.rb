class Employee < ActiveRecord::Base
  self.table_name = "CRM.EMPLOYEES_VIEW"
  self.sequence_name = "CRM.EMPLOYEES_SEQ"
  self.primary_key = "id"

  attr_accessible :email, :gender, :name, :phone, :remarks, :start_date, :status, :terminate_date, :job_title_id,
                  :department_id

  belongs_to :department
  belongs_to :job_title
  has_one :sales_person, :dependent => :destroy
  has_one :user, :dependent => :destroy
  has_many :goods_receiveds
  has_many :goods_returneds

  validates_presence_of :name, :job_title, :department, :status
  validates_inclusion_of :status, :in => %w(active suspended terminated)
  validates_inclusion_of :gender, :in => %w(M F)
end
