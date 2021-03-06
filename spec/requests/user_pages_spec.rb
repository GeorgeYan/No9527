require 'spec_helper'

describe "UserPages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_title(full_title('注册')) }
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name)}
  end

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "创建帐户" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",        with: "Test"
        fill_in "Email",       with: "test@test.com"
        fill_in "Password",    with: "123456"
        fill_in "Confirmation",with: "123456"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'test@test.com') }

        it { should have_link('退出') }
        it { should have_title(user.name) }
        it { should have_selector('div.alert.alert-success', text: '登录成功!') }
      end
    end
  end
end
