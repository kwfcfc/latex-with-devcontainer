# 📄 LaTeX Devcontainer 项目

[English version available here →](./README.en.md)

本项目基于 `ghcr.io/jmuchovej/devcontainers/latex:2025` 构建，预装了 XeLaTeX 中文支持环境，包括：

- ✅ XeTeX 引擎
- ✅ `ctex` 宏包（中文文档模板）
- ✅ TeX Live 包管理器 `tlmgr`
- ✅ 常用字体包（Noto Sans / Serif CJK SC, TeX Gyre）
---

## 🚀 使用方法

### 1. 打开 Devcontainer

使用 VSCode 或 VSCodium 打开此项目文件夹，选择 `Reopen in Container` 启动环境。你将进入一个包含 LaTeX 工作环境的容器。

### 2. 编写中文 LaTeX 文档

创建一个示例文件 `main.tex`：

```latex
\documentclass{ctexart}
\begin{document}
你好，世界！Hello, world!
\end{document}
```

### 3. 编译 PDF
保存 .tex 文件后，LaTeX Workshop 插件将自动使用 latexmk 编译并输出 PDF 到容器内的：

```bash
./output/
```
你也可以手动运行：

```bash
latexmk -xelatex main.tex -outdir=/workspaces/latex-with-devcontainer/output
```

### 4. 查看输出
编译后的 PDF 文件将自动映射到本地 ./output/ 文件夹中，可在容器外打开查看。

## 📦 使用 tlmgr 管理 TeX 宏包
你可以使用 TeX Live 包管理器 tlmgr 安装/更新宏包。例如：

```bash
# 安装一个新包（如 minted）
tlmgr install minted

# 更新 tlmgr 自身
tlmgr update --self

# 查看已安装包列表
tlmgr list --only-installed
```

## 📁 项目结构

```text
.devcontainer/
├── devcontainer.json      # Devcontainer 配置
├── setup.sh               # 安装字体与中文支持的脚本
output/                    # 映射的编译结果目录
main.tex                   # 示例 LaTeX 文件
README.md                  # 本说明文件
```

## 🧠 小贴士

+ 中文建议使用 XeLaTeX 引擎
+ 预装了 VSCode 插件 LaTeX Workshop 自动编译、查看 PDF、自动清理中间文件
+ 可通过 .latexmkrc 自定义构建逻辑和输出路径