require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'No9527 App 哈哈'" do
      visit '/static_pages/home'
      expect(page).to have_content('No9527 App 哈哈')
    end

    it "should have the title '主页'" do
      visit '/static_pages/home'
      expect(page).to have_title('主页')
    end
  end

  describe "Help page" do

    it "应该包括内容'帮助'" do
      visit '/static_pages/help'
      expect(page).to have_content('帮助')
    end

    it "should have the title '帮助'" do
      visit '/static_pages/help'
      expect(page).to have_title('帮助')
    end
  end
end
