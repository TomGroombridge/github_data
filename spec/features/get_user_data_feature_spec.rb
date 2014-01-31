require "spec_helper"

describe 'getting user data' do 

		it "should return a users name nickname" do
			visit "/"
			fill_in "username", with: "tomgroombridge"
			click_button "submit"
			expect(page).to have_content "TomGroombridge"
		end

end