# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Zed editor extension for Latte templating language support. Latte is a template engine for PHP (https://latte.nette.org/).

**Extension ID:** `latte`  
**Repository:** https://github.com/josbeir/zed-latte

## Extension Structure

This extension uses the tree-sitter-latte parser (https://github.com/josbeir/tree-sitter-latte) for parsing Latte 3.x templates.

**Files:**
- `extension.toml` - Extension metadata and grammar configuration
- `config.toml` - Language configuration (file extensions, comment syntax, tab settings)
- `highlights.scm` - Syntax highlighting queries for Latte nodes
- `brackets.scm` - Bracket matching rules (HTML tags, Latte blocks, quotes)
- `outline.scm` - Code outline/structure (blocks, macros, elements)
- `indents.scm` - Indentation rules for Latte blocks and HTML

## Latte 3.x Syntax

Latte uses single curly brace delimiter `{ ... }` for both logic and output:
- `{$variable}` - Variable output
- `{$variable|filter}` - Variable with filter
- `{if $condition}...{/if}` - Conditionals
- `{foreach $items as $item}...{/foreach}` - Loops
- `{block name}...{/block}` - Named template blocks
- `{include 'file.latte'}` - Template inclusion
- `{* comment *}` - Comments
- `n:if`, `n:foreach` - n:attributes for compact syntax
- File extension: `.latte`

## Development Commands

```bash
# Install the extension for local testing in Zed
# Option 1: Use Zed UI
# Extensions > Install Dev Extension > select this directory

# Option 2: Link to extensions directory
mkdir -p ~/.config/zed/extensions
ln -s $(pwd) ~/.config/zed/extensions/latte

# After making changes to .scm files, reload Zed or restart
```

## Tree-sitter Node Types

Key node types from tree-sitter-latte grammar:
- `latte_comment` - Latte comments `{* ... *}`
- `block` - Block structures with `block_start` and `block_end`
- `block_start` - Opening block tags `{if}`, `{foreach}`, `{block}`
- `block_end` - Closing block tags `{/if}`, `{/foreach}`, `{/block}`
- `macro_call` - Macro invocations with `macro_name` and `macro_args`
- `macro` - Standalone macros
- `elseif_block`, `else_block` - Conditional branches
- `element`, `start_tag`, `end_tag` - HTML elements
- `quoted_attribute_value` - Attribute values (may contain Latte expressions)
