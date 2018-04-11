class SearchController < ApplicationController
  
  def query
    render layout: false
  end

  def password
  	@key = rand(999999)  ##6位数字写在锁里边，用户可修改
	@val = Digest::MD5.hexdigest("raymart#{@key}")
	@date = Time.new.strftime("%Y-%m-%d-%H")
	@minute = Time.new.strftime("%M").to_i
	@value = Digest::MD5.hexdigest("#{@val}#{@date}-#{@minute/5}")
	@d_password = @value.scan(/\d/).first(6).join('')
  end
end