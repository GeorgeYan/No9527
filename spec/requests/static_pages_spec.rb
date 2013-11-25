require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_title(full_title('')) }
    it { should_not have_title('|主页') }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_title(full_title('帮助')) }
  end
end
