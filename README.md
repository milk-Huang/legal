# legal

各项目对外发布的协议与政策，用 GitHub Pages 托管，地址 https://milk-huang.github.io/legal/ 。

仓库按项目分目录，**不把项目名写进仓库名**——新项目加一个目录就行，已有项目的链接不受影响。

```
index.html              协议索引，所有项目都列在这
linkreader/             LinkReader（iOS）
  privacy.html          隐私政策，中英双语
  privacy.md            同一份内容的 Markdown 版
sync.sh                 从主仓库同步 LinkReader 的政策（见下）
```

## 为什么单独一个仓库

主仓库 `milk-Huang/LinkReader` 是私有的，而 GitHub Free 的 Pages 只对公开仓库开放，所以政策文本必须放在这个独立的公开仓库里。

代价是同一份文件存了两处：主仓库的 `docs/` 是**源**，这里是**发布副本**。用 `sync.sh` 同步，别手动复制：

```bash
./sync.sh              # 从兄弟目录 ../Reader/docs 同步
./sync.sh <源目录>      # 或指定别处
```

## 改政策注意

隐私政策网址被**编译进了 App**（`LinkReader/Core/Utilities/AppLinks.swift`）。发版之后再挪路径，测试员手机上的旧包点开就是 404。

所以 `linkreader/privacy.html` 这一层路径要当作固定不变的——可以改内容，别改位置。真要大改结构，就保留旧路径做一个跳转页。

App Review **5.1.1(i)** 要求隐私政策在两个地方都能拿到，**不是二选一**：

1. App Store Connect 的「隐私政策网址」字段
2. App 内一个容易找到的入口（LinkReader 里是「我的 → 隐私 → 隐私政策全文」）

两处指向同一个 URL。
