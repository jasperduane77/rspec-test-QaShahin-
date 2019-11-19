require 'rspec'
require 'selenium-webdriver'

describe 'Google' do

  # before(:each) - executes each tests separately
  # before(:all)  - executes all tests in one go
  before(:all) do
    # create a webdriver driver
    @driver = Selenium::WebDriver.for(:chrome)

    # navigate to some website in this case this will be our zoo site
    @driver.navigate.to 'https://www.google.com/'
  end

  it 'should open browser and click on I"m Feeling Lucky' do
    # click on I'm Feeling lucky button
    puts "ELEMENT: #{@driver.find_element(:class, 'RNmpXc')}"

    # print out the page title 
    puts @driver.title
  end

  it 'should open browser and click on somewhere' do
    # click on I'm Feeling lucky button
    puts "ELEMENT: #{@driver.find_element(:class, 'gNO89b')}"

    # print out the page title 
    puts @driver.title
  end

  # after(:each) - executes each tests separately
  # after(:all)  - executes all tests in one go
  after(:all) do
    # finally close the browser
    @driver.quit
  end
end