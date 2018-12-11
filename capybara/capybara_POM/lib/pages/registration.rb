require 'capybara/dsl'

class Registration
  include Capybara::DSL
  #Constants
  #PageObjects
  HOMEPAGE_URL = 'https://crispyjourney.herokuapp.com/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD_BY_TYPE = 'input[type="number"]'
  DOB_FIELD = 'dob'
  FEMALE_FIELD_LABEL = 'label[for="customRadioInline2"]'
  FEMALE_FIELD_INPUT = 'input[id="customRadioInline2"]'
  MALE_FIELD_LABEL = 'label[for="customRadioInline1"]'
  MALE_FIELD_INPUT = 'input[id="customRadioInline1"]'
  DEGREE_FIELD = 'input[placeholder="Enter Degree"]'
  UNIVERSITY_FIELD = 'inputUni'
  ADDRESS = 'input[placeholder="1234 Main St"]'
  ADDRESS_NO_TWO = 'input[placeholder="Apartment, studio, or floor"]'
  CITY_FIELD = 'inputCity'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def fill_in_first_name_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def check_first_name_field
    find_field(FIRST_NAME_FIELD_ID).value
  end

  def fill_in_last_name_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def check_last_name_field
    find_field(LAST_NAME_FIELD_ID).value
  end

  def fill_in_age_field
    find(AGE_FIELD_BY_TYPE).set 21
  end

  def check_age_field
    find(AGE_FIELD_BY_TYPE).value.to_i
  end

  def fill_in_dob
    fill_in(DOB_FIELD, :with => '14/04/1995')
  end

  def check_dob_field
    find_field(DOB_FIELD).value
  end

  def select_female_field
    find(FEMALE_FIELD_LABEL).click
  end

  def is_female_selected
    find(FEMALE_FIELD_INPUT).selected?
  end

  def select_male_field
    find(MALE_FIELD_LABEL).click
  end

  def is_male_selected
    find(MALE_FIELD_INPUT).selected?
  end

  def fill_in_degree
    find(DEGREE_FIELD).send_keys('Chemistry')
  end

  def check_degree_field
    find(DEGREE_FIELD).value
  end

  def select_university
    select('University of Oxford', :from => UNIVERSITY_FIELD)
  end

  def is_university_field_selected
    find_field(UNIVERSITY_FIELD).value
  end

  def fill_in_address
    find(ADDRESS).send_keys('23 Bank Street')
  end

  def check_address_field
    find(ADDRESS).value
  end

  def fill_in_address_no_two
    find(ADDRESS_NO_TWO).send_keys('Flat 3')
  end

  def check_address_no_two_field
    find(ADDRESS_NO_TWO).value
  end

  def fill_in_city
    find(CITY_FIELD).send_keys('London')
  end

  def check_city_field
    find(CITY_FIELD).value
  end

end
