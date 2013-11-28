require 'spec_helper'

describe "AuthenticationPages" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_selector('h1'),    test: '登录' }
    it { should have_title('登录') }

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }

      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "登录"
      end

      it { should have_title(user.name) }
      it { should have_link('个人资料',    href: user_path(user)) }
      it { should have_link('退出',        href: signout_path) }
      it { should_not have_link('登录',   href: signin_path) }

      describe "followed by signout" do
        before { click_link "退出" }
        it { should have_link('登录') }
      end
    end

    describe "with invalid information" do
      before { click_button "登录" }

      it { should have_title('登录') }
      it { should have_selector('div.alert.alert-error', text: '不正确') }

      describe "after visiting another page" do
        before { click_link '主页' }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end
  end
end
