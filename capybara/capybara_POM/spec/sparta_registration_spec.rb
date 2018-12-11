describe 'filling in the registration form' do

  context 'it should show success message when complete' do

    it "should show confirmation message once the the form is filled in correctly" do
      @sparta_site = SpartaSite.new
      @sparta_site.sparta_registration.visit_home_page
      @sparta_site.sparta_registration.fill_in_first_name_field('Hassanat')
    end

  end
end
