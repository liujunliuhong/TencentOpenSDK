# TencentOpenSDK
<div>
<a href="https://wiki.connect.qq.com/ios_sdk%e5%8a%9f%e8%83%bd%e5%88%97%e8%a1%a8">腾讯QQ互联SDK开发文档</a>
</div>
<div>
<a href="https://wiki.connect.qq.com/sdk%e4%b8%8b%e8%bd%bd">腾讯QQ互联SDK下载</a>
</div>
<br>

&emsp;&emsp;腾讯QQ互联SDK不支持`pod`导入，只能手动导入。为了解决这个问题，我制作了该`pod`。<br>

&emsp;&emsp;支持`Swift`。<br>

&emsp;&emsp;我只是一个搬运工😄。

## 当前pod库支持的QQ互联SDK版本
```
3.5.10
```

## 版本要求
腾讯QQ互联SDK文档并没有明确要求`iOS`版本，所以`iOS`版本必须是`9.0`及以上

## 安装
推荐使用`CocoaPods`

```
pod 'TencentOpenSDK-iOS'
```

## 使用
Swift
```
import TencentOpenAPI
```

OC
```
@import TencentOpenAPI;
```
或者
```
#import <TencentOpenAPI/TencentOpenAPI.h>
```

## 说明
- `pod`版本和腾讯QQ互联官方版本保持一致，比如`pod`版本是`3.5.10`，表示当前使用的官方`SDK`版本也是`3.5.10`

- 我只是一个搬运工，`pod`库的更新依赖于腾讯QQ互联官方，即官方更新了`SDK`，我的`pod`库才会更新
