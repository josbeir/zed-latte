# Zed Latte Extension

Latte language support for the Zed code editor.
<rewrite_this>

- Syntax highlighting, brackets, outline, and indentation for `.latte` files.
- Arguments and PHP blocks are passed to tree-sitter-php for highlighting.
- Emmet language server support
- Powered by [tree-sitter-latte](https://github.com/josbeir/tree-sitter-latte).
</rewrite_this>

## Installation

1. Open Zed.
2. Go to **Extensions > Install Dev Extension** and select this folder.

Or, for development:

```bash
mkdir -p ~/.config/zed/extensions
ln -s $(pwd) ~/.config/zed/extensions/latte
```

## Contributing

Pull requests and issues are welcome!
Please update the `languages/latte/*.scm` files if the grammar changes.

## License

MIT License. See [LICENSE](LICENSE) for details.
