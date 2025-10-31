# 📄 LaTeX Devcontainer Project

[查看中文版 →](./README.md)

This project is based on `ghcr.io/jmuchovej/devcontainers/latex:2025`, and comes preconfigured with LuaLaTeX support for Chinese documents, including:

- ✅ LuaTeX engine
- ✅ `ctex` package (for Chinese document templates)
- ✅ TeX Live package manager `tlmgr`
- ✅ Common font packages (Noto Sans / Serif CJK SC, TeX Gyre)

---

## 🚀 Usage

### 1. Open the Devcontainer

Use VSCode or VSCodium to open this project folder, and select **"Reopen in Container"**. This will start a LaTeX development environment in a container.

### 2. Write a Chinese LaTeX Document

Create a sample file `main.tex`:

```latex
\documentclass{ctexart}
\begin{document}
你好，世界！Hello, world!
\end{document}
```

### 3. Compile the PDF
After saving your .tex file, the LaTeX Workshop extension will automatically compile it using latexmk and output the PDF to the container directory:

```bash
./output/
```
You can also run the command manually:

```bash
latexmk -xelatex main.tex -outdir=/workspaces/latex-with-devcontainer/output
```

### 4. View the Output
The compiled PDF will be automatically synced to the local ./output/ folder and can be viewed outside the container.

## 📦 Managing TeX Packages with tlmgr
You can manage LaTeX packages using the TeX Live Manager tlmgr. For example:

```bash
# Install a new package (e.g., minted)
tlmgr install minted

# Update tlmgr itself
tlmgr update --self

# List installed packages
tlmgr list --only-installed
```

## 📁 Project Structure
```text
.devcontainer/
├── devcontainer.json      # Devcontainer configuration
├── setup.sh               # Script to install fonts and Chinese support
output/                    # Mapped output directory for compiled PDFs
main.tex                   # Sample LaTeX document
README.en.md               # This README file
README.md                  # Chinese README fie
```

## 🧠 Tips

+ It is recommended to use the **LuaLaTeX** engine for Chinese typesetting.
+ The **LaTeX Workshop** extension is pre-installed in VSCode for automatic compilation, PDF preview, and cleanup of intermediate files.
+ You can customize the build logic and output path via a `.latexmkrc` configuration file.
