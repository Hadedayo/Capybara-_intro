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
  FEMALE_FIELD = 'label[for="customRadioInline2"]'


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
    find(AGE_FIELD_BY_TYPE).value
  end

  def fill_in_dob
    fill_in(DOB_FIELD, :with => '11/12/2018')
  end

  def check_dob_field
    find_field(DOB_FIELD).value
  end

  def check_female_field
    select(FEMALE_FIELD)
  end

end
