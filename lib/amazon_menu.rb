# frozen_string_literal: true
require 'selenium-webdriver'

class AmazonMenu
  def self.setup
    @driver = Selenium::WebDriver::Driver.for(:chrome)
    @app_url = "https://www.amazon.in/"
    @driver.navigate.to(@app_url)
  end

  def self.test_click_menu
    hamburger_menu = @driver.find_element(id: 'nav-hamburger-menu')
    hamburger_menu.click
    electronics_menu = @driver.find_element(xpath: '//div[text()="TV, Appliances, Electronics"]')
    electronics_menu.click
    page_title = @driver.title
    puts page_title
  end

  def self.getmenuvalue
    electronicmenu = @driver.find_element(css: '.hmenu-translateX ul:nth-child(9) li:nth-child(2) div').text
    return electronicmenu
  end

  def self.teardown
    @driver.quit
  end

end
