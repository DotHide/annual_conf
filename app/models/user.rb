class User < ActiveRecord::Base
  VALID_MOBILE_REGEX = /(^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$)|(^0{0,1}1[3|4|5|6|7|8|9][0-9]{9}$)/i
  validates :mobile, presence: { :message => '必须填写！'},
                   format: { with: VALID_MOBILE_REGEX, :message => '格式错误！' },
                   uniqueness: { :message => '该邮箱已被注册！' }
  validates :name, presence: { :message => '必须填写！'}
end
