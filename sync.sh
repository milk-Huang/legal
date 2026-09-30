#!/usr/bin/env bash
#
# 从主仓库同步 LinkReader 的对外页面（隐私政策、支持页）到这里。
#
# 为什么是两份文件：主仓库 `milk-Huang/LinkReader` 是私有的，而 GitHub Free 的
# Pages 只对公开仓库开放，所以站点必须放在这个独立的公开仓库里。没法用子模块
# 或软链绕过去。
#
# 改这些页面时**只改主仓库 `docs/` 下的源文件**，然后跑这个脚本，别手动往这儿复制
# ——两处不一样，就等于线上那份和 App 里那份说的不是一回事。
#
# 隐私政策尤其经不起这个：App Review 5.1.1(i) 要求它同时出现在 App Store Connect
# 的字段里和 App 内入口里，两处都指向这个线上地址，所以只留一份源。
# 支持页同理，它同时是 App Store Connect 的「技术支持网址」和 App 内的「帮助与反馈」。
#
# 用法：
#   ./sync.sh              # 从默认位置同步（兄弟目录 ../Reader/docs）
#   ./sync.sh <源目录>      # 指定别的源目录

set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="${1:-$HERE/../Reader/docs}"
DST="$HERE/linkreader"

for pair in "privacy-policy.html:privacy.html" \
             "privacy-policy.md:privacy.md" \
             "support.html:support.html"; do
    from="$SRC/${pair%%:*}"
    to="$DST/${pair##*:}"

    if [[ ! -f "$from" ]]; then
        echo "找不到源文件：$from" >&2
        exit 1
    fi

    cp "$from" "$to"
    echo "同步 ${pair%%:*} → linkreader/${pair##*:}"
done

echo
echo "改动待提交："
git -C "$HERE" status --short
echo
echo "确认无误后推上去："
echo "  git -C $HERE commit -am 'docs: 更新对外页面' && git -C $HERE push"
