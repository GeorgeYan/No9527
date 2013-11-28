Feature: 登录
  Scenario: 登录失败
    Given 用户访问登录页面
    When  当他提交错误的登录信息
    Then  消息提示登录失败

  Scenario: 登录成功
    Given 用户访问登录页面
      And 用户已经注册
    When 当他提交正确的登录信息
    Then 他应该看到个人资料页面
     And  他应该看到退出链接
