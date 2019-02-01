# play_with_flutter

A new Flutter application, a Flutter playground.

## install

**Step 1: download**

> git clone https://github.com/flutter/flutter.git

or download

> https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.0.0-stable.zip



**Step 2: update path**
![M`XQRZ{H(3ADP9AZ~%Z(RPS.png](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqvwlep6oj30i80ffdh3.jpg)

append the full path `flutter\bin` to `Path`.

**Step 3: reboot system and check flutter**

![}G}J@5H4EEKWZ~AW]R7`R6Y.png](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqw08aw7hj30hi0hbdgz.jpg)

**Step 4: install flutter plug**
![M`U_$F0VA9Y]}Y3HYSK`0UT.png](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqw3e8yvgj30nc0jhjsz.jpg)

**Step 5: New Flutter Project**

File > New > New Flutter Project

**Step 6: Use Proxy**

`\flutter\packages\flutter_tools\gradle\flutter.gradle` & `build.gradle`

![WVTEGUG~4{QEG[6YOJF[C6O.png](https://ws1.sinaimg.cn/large/0072Lfvtly1fzqw7er441j30jg0ahaat.jpg)

```
    // use proxy
    maven { url 'https://maven.aliyun.com/repository/google' }
    maven { url 'https://maven.aliyun.com/repository/jcenter' }
    maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
```
