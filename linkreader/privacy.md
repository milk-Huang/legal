# LinkReader 隐私政策

最后更新：2026-10-10

LinkReader 是一个本地优先的私人内容收集箱。**我们不运营服务器，不收集、不上传你的任何数据。**

## 我们收集什么

什么都不收集。

我们没有分析 SDK、没有广告、没有崩溃上报。App 内没有任何代码会把你的数据发送给我们或第三方。

## 你的数据存在哪里

全部存在你自己的设备上：

- **收藏、文件夹、摘录、阅读进度、历史、快照**：存放在 App 本地的 SwiftData 数据库
- **分享扩展收到的链接**：通过 App Group 容器在本机传给主 App

删除 App 即删除全部数据。我们不持有副本，也没有能力帮你恢复——这正是这个设计的目的。

## 删除账号

App 内「我的 → 账号 → 删除账号」可以随时删除账号，无需联系任何人，也不需要去任何网页。

删除会清掉本机这份账号记录，以及它名下的全部数据：收藏与文件夹、阅读状态与进度、摘录与批注、浏览历史、离线快照、首页条目与关注的来源、兴趣选择、站点规则、阅读偏好。删除后 App 回到全新安装的状态，此操作不可撤销。

因为我们没有服务器，**删除即刻彻底生效**：这些数据从来没有离开过你的设备，所以不存在需要另行清理的远端副本，也不存在我们保留的备份。

## Sign in with Apple

登录是**可选**的，不登录也能用全部核心功能。

如果你选择使用 Sign in with Apple，我们只会把 Apple 提供的一个不透明用户标识符存在**你的设备本地**，用于记住登录状态。姓名与邮箱不会被请求，也不会被存储或传输。

我们不会接收或保存 Apple 的身份令牌，因此也没有可供撤销的令牌副本。如果想一并移除 Apple 侧对 LinkReader 的授权，可在系统「设置 → 你的名字 → 使用 Apple 登录」里操作。

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

Last updated: 2026-10-10

LinkReader is a local-first personal reading desk. **We run no servers and collect no data.**

## What we collect

Nothing. There is no analytics SDK, no advertising, and no crash reporting. No code in the app sends your data to us or to any third party.

## Where your data lives

Entirely on your own device: bookmarks, folders, highlights, reading progress, history, and snapshots are stored in a local SwiftData database. Links shared via the Share Extension reach the main app through a local App Group container. Deleting the app deletes all of it — we hold no copy and cannot restore it, which is the point.

## Deleting your account

Profile → Account → Delete Account removes your account at any time, without contacting anyone and without visiting any website.

It deletes the account record on your device along with everything stored under it: bookmarks and folders, reading status and progress, highlights and notes, browsing history, offline snapshots, Home items and followed sources, interest selections, site rules, and reading preferences. The app returns to a freshly installed state, and the action cannot be undone.

Because we run no servers, **deletion takes effect completely and immediately**: this data never left your device, so there is no remote copy to clean up and no backup we hold.

## Sign in with Apple

Signing in is **optional**; every core feature works without it. If you do sign in, we store only the opaque user identifier Apple provides, locally on your device. Your name and email are neither requested, stored, nor transmitted.

We never receive or store Apple's identity tokens, so there is no token copy on our side to revoke. To also remove LinkReader's authorization on Apple's side, use Settings → your name → Sign in with Apple.

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
