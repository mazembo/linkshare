require 'rails_helper'

describe "Link" do
  it "should save a valid record" do
    @link = Link.new
    @link.title = "bla bla bla"
    @link.url = "http://www.yahoo.fr"
    @link.save
    expect(@link) .to be_valid
  end
  it "should validate presence of title" do
    @link = Link.new
    @link.title = ""
    @link.url = "http://www.yahoo.fr"
    @link.save
    expect(@link) .not_to be_valid
  end
  
  it "should validate presence of url" do
    @link = Link.new
    @link.title = "bla bla bla"
    @link.url = ""
    @link.save
    expect(@link) .not_to be_valid
  end
 
end