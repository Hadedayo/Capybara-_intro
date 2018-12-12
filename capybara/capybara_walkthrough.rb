require 'capybara/dsl'

class Registration

  #Constants
  #PageObjects
  HOMEPAGE_URL = 'https://crispyjourney.herokuapp.com/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD_BY_TYPE = 'input[type="number"]'
  DOB_FIELD = 'dob'
  FEMALE_FIELD = 'label[for="customRadioInline2"]'


  def initialize
    Capybara.register_driver(:chrome) do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @driver = Capybara::Session.new(:chrome)

  end

  def visit_home_page
    @driver.visit(HOMEPAGE_URL)
  end

  def fill_in_first_name_field
    @driver.fill_in(FIRST_NAME_FIELD_ID, :with => 'Hassanat')
  end

  def check_first_name_field
    @driver.find_field(FIRST_NAME_FIELD_ID).value
  end

  def fill_in_last_name_field
    @driver.fill_in(LAST_NAME_FIELD_ID, :with => 'Ade')
  end

  def check_last_name_field
    @driver.find_field(LAST_NAME_FIELD_ID).value
  end

  def fill_in_age_field
    @driver.find(AGE_FIELD_BY_TYPE).set 21
  end

  def check_age_field
    @driver.find(AGE_FIELD_BY_TYPE).value
  end

  def fill_in_dob
    @driver.fill_in(DOB_FIELD, :with => '11/12/2018')
  end

  def check_dob_field
    @driver.find_field(DOB_FIELD).value
  end

  def check_female_field
    @driver.select(FEMALE_FIELD)
  end

end
