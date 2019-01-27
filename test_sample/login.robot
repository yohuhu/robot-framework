***Settings***
Documentation   User Login
Library           SeleniumLibrary
Library         util.py

***Varialbe***
${server_url}   http://39.107.96.138:3000/
${Browser}      chrome
${username}     user1



*** Keywords ***
user1成功登录
    Open Browser    http://39.107.96.138:3000/  chrome
    Maximize Browser Window
    click element   css:a[href="/signin"]
    Input Text   id:name      ${username} 
    Input Text   id:pass     123456
    click element   css:[type='submit']
    Page Should Contain      ${username} 

删除帖子
    click element    css:span[class="user_name"]>a
    click element     css:div.cell a.topic_title
    click element   css:i[class='fa fa-lg fa-trash']
    handle Alert

***Test Cases ***
# valid Login
#     Open Browser    http://39.107.96.138:3000/  chrome
#     Maximize Browser Window
#     click element   css:a[href="/signin"]
#     # Input Text   id:name   user1
#     Input Text  id:name   ${EMPTY}
#     Input Text   id:pass     123456

# ${file_name} =   util.Get Current Time   #引用py文件的方法

删除帖子
    ${file_name}    util.get_current_time
    Log     ${file_name} 
    # user1成功登录
    # 删除帖子
    # [Teardown]  Capture Page Screenshot   ${file_name}.png
    # close Browser  

# anjuke Test
#      Open Browser    https://anjuke.com/   chrome
#      click element  xpath://*[@id="login_l"]/div/a[1]
#      select frame  id:iframeloginIfm
#      input Text     id:phoneIpt     13990099999
     

