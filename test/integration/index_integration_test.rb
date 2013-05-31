require "test_helper"

class AppIndexTest < ActionDispatch::IntegrationTest
    test "Testing Headline" do
        visit users_path
        assert page.has_content?("Listing users")
    end
end

class UserShowTest < ActionDispatch::IntegrationTest
    setup do
        @user1= User.create!(name: "Uschi",email:"Uschi@Obermeyer.de")
        @adress1= @user1.adresses.create!(billing_street:"F-strasse",billing_house_number:"2")    
        @user2= User.create!(name: "Karla",email:"Karla@Kolumna.de")
    end
    test "Testing elements of User/show" do
        visit user_path(@user1)
        assert page.has_content?("Name")
        #save_and_open_page
        assert page.has_content?("F-strasse")
    end
end
