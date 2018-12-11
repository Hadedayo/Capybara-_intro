describe 'filling in the registration form' do

  context 'it should show success message when complete' do

    it "should show confirmation message once the the form is filled in correctly" do
      @sparta_site = SpartaSite.new
      @sparta_site.sparta_registration.visit_home_page

      @sparta_site.sparta_registration.fill_in_first_name_field('Hassanat')
      expect(@sparta_site.sparta_registration.check_first_name_field).to eq 'Hassanat'

      @sparta_site.sparta_registration.fill_in_last_name_field('Ade')
      expect(@sparta_site.sparta_registration.check_last_name_field).to eq 'Ade'

      @sparta_site.sparta_registration.fill_in_age_field
      expect(@sparta_site.sparta_registration.check_age_field).to eq 21

      @sparta_site.sparta_registration.fill_in_dob
      expect(@sparta_site.sparta_registration.check_dob_field).to eq '1995-04-14'

      @sparta_site.sparta_registration.select_female_field
      expect(@sparta_site.sparta_registration.is_female_selected).to be true
      expect(@sparta_site.sparta_registration.is_male_selected).to be false

      @sparta_site.sparta_registration.fill_in_degree
      expect(@sparta_site.sparta_registration.check_degree_field).to eq 'Chemistry'

      @sparta_site.sparta_registration.select_university
      expect(@sparta_site.sparta_registration.is_university_field_selected).to eq 'University of Oxford'

      @sparta_site.sparta_registration.fill_in_address
      expect(@sparta_site.sparta_registration.check_address_field).to eq '23 Bank Street'

      @sparta_site.sparta_registration.fill_in_address_no_two
      expect(@sparta_site.sparta_registration.check_address_no_two_field).to eq 'Flat 3'

      @sparta_site.sparta_registration.fill_in_city
      expect(@sparta_site.sparta_registration.check_city_field).to eq 'London'
      sleep 3


    end



  end
end
