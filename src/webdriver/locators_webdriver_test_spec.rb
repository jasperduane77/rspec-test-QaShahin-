require 'rspec'
require 'selenium-webdriver'

describe 'My zoo site' do
  before(:all) do
    @driver = Selenium::Webdriver.for(:chrome)
    @driver.navigate.to 'http://freelancer.geekngamer.com/webapp/'
  end

  it 'does something' do
    # find and click the link
    @driver.find_element(:id, 'contact_link').click

    # print out title/heading
    puts @driver.find_element(:class, 'subhead').text
    puts @driver.find_element(:class_name, 'subhead').text

    # find the input name then set value/text
    @driver.find_element(:name, 'address_field').send_keys 'dummy text'

    # find css of the adoption link then click on it
    @driver.find_element(:css, '[id=adoption_link]').click

    # find link then click home
    @driver.find_element(:link, 'HOME').click
    @driver.find_element(:link_text, 'HOME').click

    # find partial link then click about
    @driver.find_element(:partial_link_text, 'ABO')

    # find tag name then print tag
    puts @driver.find_element(:tag_name, 'p').text

    # find by xpath then click link
    @driver.find_element(:xpath, '//*[@id="contact_link"]').click
  end

  after(:all) do
    @driver.quit
  end
end