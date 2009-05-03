require File.join( File.dirname(__FILE__), "..", "..","lib", "sponsor_list" )
require 'spec'

describe "SponsorList" do
  
  before do
    @sponsor_list = SponsorList.new
  end
  
  it "should have 7 sponsors" do
    @sponsor_list.sponsors.size.should == 7
  end
  
  
  it "should have GlobalInn" do
    globalinn = @sponsor_list.sponsor("GlobalInn")
    globalinn.url.should == "http://www.globalinn.com"
    globalinn.logo_file.should == "globalinn_logo.png"
  end

  it "should have Agero" do
    agero = @sponsor_list.sponsor("Agero")
    agero.url.should == "http://www.agero.se"
    agero.logo_file.should == "agero_logo.png"
  end
  
  
  it "should have Agical" do
    agical = @sponsor_list.sponsor("Agical")
    agical.url.should == "http://www.agical.se"
    agical.logo_file.should == "agical_logo.png"
  end
  
  it "should have Dynabyte" do
    dynabyte = @sponsor_list.sponsor("Dynabyte")
    dynabyte.url.should == "http://www.dynabyte.se"
    dynabyte.logo_file.should == "dynabyte_logo.png"
  end
  
  it "should have Valtech" do
    valtech = @sponsor_list.sponsor("Valtech")
    valtech.url.should == "http://www.valtech.se"
    valtech.logo_file.should == "valtech_logo.png"
  end
  
  it "should have Avega" do
    avega = @sponsor_list.sponsor("Avega")
    avega.url.should == "http://www.avegagroup.se"
    avega.logo_file.should == "avega_logo.png"
  end
  
  it "should have Citerus" do
    citerus = @sponsor_list.sponsor("Citerus")
    citerus.url.should == "http://www.citerus.se"
    citerus.logo_file.should == "citerus_logo.png"
  end
  
end

# describe "a random sponsorlist" do
# 
#   before do
#     @sponsor_list = SponsorList.new
#     @random_ordered_sponsors = @sponsor_list.random_order
#   end
# 
#   it "should have 1 elements" do
#     @random_ordered_sponsors.length.should == 1
#   end
#   
#   it "should not provide the list ordered the same way twice" do
#     @sponsor_list.random_order.should_not == @random_ordered_sponsors
#   end
#   
# end
