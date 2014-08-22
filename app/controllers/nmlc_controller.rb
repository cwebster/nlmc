class NmlcController < ApplicationController
  def index
    require "xml/xslt"
    xslt = XML::XSLT.new()
    xmldoc = "#{Rails.root}//public/NLMC_Live_Apr_2014_release4_0.xml"
    xsldoc = "#{Rails.root}//public/nlmc.xslt"
    
    xslt.xml = xmldoc
    xslt.xsl = xsldoc
    
    
    
    @html = xslt.serve()
    
  render :index
end
end