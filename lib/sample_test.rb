# frozen_string_literal: true
require 'selenium-webdriver'

driver = Selenium::WebDriver::Driver.for(:chrome)

driver.navigate.to "https://www.amazon.in/"
driver.find_element(id: 'nav-hamburger-menu').click
driver.find_element(xpath: '//div[text()="TV, Appliances, Electronics"]').click
titleValue = driver.title
puts titleValue
menuValue = driver.find_element(css: '.hmenu-translateX ul:nth-child(9) li:nth-child(2) div').text
puts menuValue
driver.quit