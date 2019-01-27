*** Settings ***
Documentation    测试注册失败场景
Library           SeleniumLibrary

suite Setup     打开浏览器到注册页面
Suite Teardown      关闭浏览器
# Resource        Resource.robot
Test Template  用户注册失败的几个场景

*** Variables ***
${server_url}   http://39.107.96.138:3000/
${Browser}      chrome
${valid_username}     user1
${valid_password}  123456
${valid_repassword}     
${valid_email}      user1@126.com

*** Keywords ***
打开浏览器到注册页面
    Open Browser    ${server_url}   ${Browser}  
    Maximize Browser Window
    click element   css:a[href="/signin"]

关闭浏览器
    close Browser

输入用户名
    [Arguments]  ${username}
    input text  id:loginname  ${username}

输入没密码
    [Arguments]  ${password}
    input text  id:pass  ${password}

确认密码
    [Arguments]  ${repass}
    input text  id:re_pass  ${repass}
输入电子邮件
    [Arguments]  ${email}
    input text  id:email  ${email}

用户注册失败的几个场景
    [Arguments] ${username} ${password}  ${repass}  ${email}
    输入用户名   ${username}
    输入密码     ${password} 
    确认密码    ${repass} 
    输入电子邮件    ${email}




# *** Test Cases ***      username    password                 repass               email
# 用户名为空              ${empty}    ${valid_username}   ${valid_repassword}     ${valid_email}
# 密码为空               ${username}   ${empty}            ${valid_repassword}    ${valid_email}


***Test Cases***
1111
    Log To Console      "123"