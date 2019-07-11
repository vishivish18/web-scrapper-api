require 'rubygems'
require 'nokogiri'   
require 'open-uri'

class DumpsController < ApplicationController

  # GET /dumps
  def index
  	@dumps = Dump.all  	
  	# @dumps.each do |data|
  	# 	data.destroy
  	# end
    json_response(@dumps)
  end

  # POST /dumps
  def create
    webpageurl = params[:url]
    puts "webpage url is #{webpageurl}"
  	page = Nokogiri::HTML(open(webpageurl))
  	allContentData = [] 
  	h1s = page.css('h1')
  	h1s.each do |h1item|
  	  allContentData.push({ :url => webpageurl, :tagtype => 'h1', :content => h1item.text })
  	end
  	h2s = page.css('h2')
  	h2s.each do |h2item|
  	  allContentData.push({ :url => webpageurl, :tagtype => 'h2', :content => h2item.text })
  	end
  	h3s = page.css('h3')
  	h3s.each do |h3item|
  	  allContentData.push({ :url => webpageurl, :tagtype => 'h3', :content => h3item.text })
  	end

  	links = page.css('a')
  	links.each do |linkitem|
  	  if linkitem.text.length >0
  	  	allContentData.push({ :url => webpageurl, :tagtype => 'link', :content => linkitem.text })
  	  end
  	end
  	puts "#{webpageurl} page has #{h1s.length} h1s, #{h2s.length} h2s, #{h3s.length} h3s and #{links.length} links"

  	#puts allContentData
  	@dumpbulk = Dump.create(allContentData)
  	json_response(@dumpbulk, :created)
  end

  # GET /dumps/:id
  def show
  	puts "I AM HERE"
  	url = params[:url]
  	puts url
  	@dump = Dump.find(url: url)
    json_response(@dump)
  end

  # PUT /dumps/:id
  def update
    @dump.update(dump)
    head :no_content
  end

  # DELETE /dumps/:id
  def destroy
    @dumps = Dump.all  	
  	@dumps.each do |data|
  		data.destroy
  	end
  end

  private
  
end