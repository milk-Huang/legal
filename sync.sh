#!/usr/bin/env bash
#
# 从主仓库同步 LinkReader 的隐私政策到这里。
#
# 为什么是两份文件：主仓库 `milk-Huang/LinkReader` 是私有的，而 GitHub Free 的
# Pages 只对公开仓库开放，所以站点必须放在这个独立的公开仓库里。没法用子模块
# 或软链绕过去。
#
# 改政策时**只改主仓库的 `docs/privacy-policy.html` 和 `.md`**，然后跑这个脚本，
# 别手动往这儿复制——两份不一样就等于线上那份和 App 里那份说的不是一回事。
#
# 用法：
#   ./sync.sh              # 从默认位置同步（兄弟目录 ../Reader/docs）
#   ./sync.sh <源目录>      # 指定别的源目录

set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="${1:-$HERE/../Reader/docs}"
DST="$HERE/linkreader"

for pair in "privacy-policy.html:privacy.html" "privacy-policy.md:privacy.md"; do
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
echo "  git -C $HERE commit -am 'docs: 更新隐私政策' && git -C $HERE push"
