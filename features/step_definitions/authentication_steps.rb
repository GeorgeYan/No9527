Given(/^用户访问登录页面$/) do
  visit signin_path
end

When(/^当他提交错误的登录信息$/) do
  click_button "登录"
end

Then(/^消息提示登录失败$/) do
  expect(page).to have_selector('div.alert.alert-error')
end

Given(/^用户已经注册$/) do
  @user = User.create(name: "test", email: "test@test.com", password: "123456", password_confirmation: "123456")
end

When(/^当他提交正确的登录信息$/) do
  fill_in "Email",       with: @user.email
  fill_in "Password",    with: @user.password
  click_button "登录"
end

Then(/^他应该看到个人资料页面$/) do
  expect(page).to have_title(@user.name)
end

Then(/^他应该看到退出链接$/) do
  expect(page).to have_link('退出', href: signout_path)
end
