class SearchController < ApplicationController
  
  def query
    render layout: false
  end

  def password
  	p "========pppppppp"
  	num = 0
  	while num < 100000
  	  num = rand(999999)
    end
    @key = params[:code].blank? ? num : params[:code]
	@val = Digest::MD5.hexdigest("raymart#{@key}")
	@date = Time.new.strftime("%Y-%m-%d-%H")
	@minute = Time.new.strftime("%M").to_i
	@value = Digest::MD5.hexdigest("#{@val}#{@date}-#{@minute/5}")
	@d_password = @value.scan(/\d/).first(6).join('')
	render layout: false
  end
end