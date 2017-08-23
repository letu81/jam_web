# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w(
	wechat.css 
	wechat.js 

	fonts/fontawesome-webfont.eot
	fonts/fontawesome-webfont.svg
	fonts/fontawesome-webfont.ttf
	fonts/fontawesome-webfont.woff
	fonts/fontawesome-webfont.woff2
	fonts/fontawesome-webfont.otf

	animate.css
	bootsnav.css
	bootstrap.min.css
	font-awesome.min.css

    customize/customize.css
	home/style.css
	product/product.css

	bootsnav.js
	bootstrap.min.js
	html5shiv.min.js
	jquery-2.1.1.min.js
 	respond.min.js
 	jquery.ui.datepicker-zh-CN.js
 	
 	home/home.js

 	home/plus2015.js
 	home/stellar.js

 	wap/wap.css
 	wap/swiper.min 
 	wap/jquery.min
 	wap/jquery.modal
)