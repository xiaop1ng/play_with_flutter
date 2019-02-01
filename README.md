# play_with_flutter

A new Flutter application, a Flutter playground.

## install

**Step 1: download**

> git clone https://github.com/flutter/flutter.git

or download

> https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.0.0-stable.zip



**Step 2: update path**
![MRPS](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqvwlep6oj30i80ffdh3.jpg)

append the full path `flutter\bin` to `Path`.

**Step 3: reboot system and check flutter**

> flutter doctor -v

![WZAW](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqw08aw7hj30hi0hbdgz.jpg)

**Step 4: install flutter plug**

![0V3](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqw3e8yvgj30nc0jhjsz.jpg)

**Step 5: New Flutter Project**

File > New > New Flutter Project

**Step 6: Use Proxy**

`\flutter\packages\flutter_tools\gradle\flutter.gradle` & `build.gradle`


![WVT](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqw7er441j30jg0ahaat.jpg)


```
    // use proxy
    maven { url 'https://maven.aliyun.com/repository/google' }
    maven { url 'https://maven.aliyun.com/repository/jcenter' }
    maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
```
