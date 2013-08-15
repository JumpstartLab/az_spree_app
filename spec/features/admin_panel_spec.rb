require 'spec_helper'

describe "The admin panel" do 
  def create_admin
    admin = Spree::Role.find_or_create_by_name(:admin)
    user = admin.users.create(:email => "admin@example.com", :password => "password")
  end

  def create_user
    user_role = Spree::Role.find_or_create_by_name(:user)
    user = user_role.users.create(:email => "user@example.com", :password => "password")
  end

  def login_as_admin
    visit '/login'
    fill_in 'spree_user_email', :with => "admin@example.com"
    fill_in 'spree_user_password', :with => "password"
    click_button('Login')
  end

  describe "identifies admins" do
    let(:admin){ @admin }

    before(:each) do
      @admin = create_admin
      login_as_admin
    end

    it "correctly marks an admin" do
      visit '/admin/users'
      within("tr#spree_user_#{ admin.id }") do
        expect(page).to have_content("YES")
      end
    end

    it "correctly marks a non-admin" do
      user = create_user
      visit '/admin/users'
      within("tr#spree_user_#{ user.id }") do
        expect(page).to have_content("NO")
      end
    end
  end
end






