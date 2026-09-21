# LinkReader 隐私政策

最后更新：2026-09-21

LinkReader 是一个本地优先的私人内容收集箱。**我们不运营服务器，不收集、不上传你的任何数据。**

## 我们收集什么

什么都不收集。

我们没有账号系统、没有分析 SDK、没有广告、没有崩溃上报。App 内没有任何代码会把你的数据发送给我们或第三方。

## 你的数据存在哪里

全部存在你自己的设备上：

- **收藏、文件夹、摘录、阅读进度、历史、快照**：存放在 App 本地的 SwiftData 数据库
- **分享扩展收到的链接**：通过 App Group 容器在本机传给主 App

删除 App 即删除全部数据。我们不持有副本，也没有能力帮你恢复——这正是这个设计的目的。

## Sign in with Apple

登录是**可选**的，不登录也能用全部核心功能。

如果你选择使用 Sign in with Apple，我们只会把 Apple 提供的一个不透明用户标识符存在**你的设备本地**，用于记住登录状态。姓名与邮箱不会被请求，也不会被存储或传输。

## 网络请求

App 会发起两类网络请求，都是直接由你的设备发往目标网站：

1. **你收藏或打开某个链接时**，App 会请求该网页，读取公开的标题、封面图与正文，用于归档和离线快照。
2. **你浏览网页时**，请求由 App 内置的浏览器直接发往目标网站。

这些请求不经过我们。目标网站能看到你的 IP 地址，这与你用任何浏览器访问它时一样。我们无法看到、也不会记录这些请求。

## 相册、通讯录、位置等

App 不申请这些权限。

## 儿童

App 不面向儿童，也不收集任何年龄信息。

## 变更

本政策如有修改，会更新本页顶部的日期，并在 App 更新说明中注明。

## 联系

有任何隐私相关问题，请提 Issue：https://github.com/milk-Huang/legal/issues

---

# LinkReader Privacy Policy

Last updated: 2026-09-21

LinkReader is a local-first personal reading desk. **We run no servers and collect no data.**

## What we collect

Nothing. There is no account system, no analytics SDK, no advertising, and no crash reporting. No code in the app sends your data to us or to any third party.

## Where your data lives

Entirely on your own device: bookmarks, folders, highlights, reading progress, history, and snapshots are stored in a local SwiftData database. Links shared via the Share Extension reach the main app through a local App Group container. Deleting the app deletes all of it — we hold no copy and cannot restore it, which is the point.

## Sign in with Apple

Signing in is **optional**; every core feature works without it. If you do sign in, we store only the opaque user identifier Apple provides, locally on your device. Your name and email are neither requested, stored, nor transmitted.

## Network requests

The app makes two kinds of requests, both sent directly from your device to the destination site: fetching a page you saved to read its public title, cover image, and body text for archiving and offline snapshots; and loading pages as you browse. These requests never pass through us. The destination site sees your IP address exactly as it would in any browser. We cannot see and do not log them.

## Permissions

The app requests no access to photos, contacts, or location.

## Children

The app is not directed at children and collects no age information.

## Changes

Any change to this policy updates the date at the top of this page and is noted in the app's release notes.

## Contact

https://github.com/milk-Huang/legal/issues
